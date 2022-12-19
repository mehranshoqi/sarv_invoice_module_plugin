import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../constants/pref_keys.dart';
import '../entities/response/user_profile/user_profile.dart';
import '../injection/di.dart';

@lazySingleton
class UserService {
  static final _st = sl<FlutterSecureStorage>();

  static Future<UserProfile> getProfile() async {
    final Map<String, dynamic> _mapData = await _getMapDate();
    final UserProfile userProfile = UserProfile.fromJson(_mapData);
    return userProfile;
  }

  static void updateUserProfile(
      {String? phoneNumber, String? lastName, String? firstName}) async {
    final UserProfile userProfile = await getProfile();
    userProfile.phoneNumber = phoneNumber ?? userProfile.phoneNumber;
    userProfile.firstName = firstName ?? userProfile.firstName;
    userProfile.lastName = lastName ?? userProfile.lastName;
    final Map<String, dynamic> mapData = userProfile.toJson();
    _st.write(key: Prefkeys.user, value: json.encode(mapData));
  }

  static Future<Map<String, dynamic>> _getMapDate() async {
    final String userData = await _st.read(key: Prefkeys.user) ?? '';

    if (userData.isEmpty) return {};
    final Map<String, dynamic> mapData = json.decode(userData);
    return mapData;
  }

  static loggedOut() async {
    await _st.write(key: Prefkeys.token, value: '');
    await _st.write(key: Prefkeys.logged, value: '');
    await _st.write(key: Prefkeys.user, value: '');
  }

  static void showUserPrdofile() async {
    final userProfile = await UserService.getProfile();
    print(userProfile.firstName);
    print('first name');
    print(userProfile.lastName);
    print('last name');
    print(userProfile.phoneNumber);
    print('phone numbre');
  }

  static Future<bool> isLogged() async =>
      (await _st.read(key: Prefkeys.logged))?.isNotEmpty ?? false;
}
