import 'side_menu_sub_option.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class SideMenuOption extends Equatable {
  final String label;
  final IconData icon;
  final List<SideMenuSubOption> options;

  const SideMenuOption(this.label, this.icon, this.options);

  @override
  List<Object?> get props => [label, options, icon];
}
