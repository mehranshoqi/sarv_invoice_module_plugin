// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetCustomersGroupsStateTearOff {
  const _$GetCustomersGroupsStateTearOff();

  _SendNameInital initial() {
    return const _SendNameInital();
  }

  GetCustomersGroupsStateLoading loading() {
    return const GetCustomersGroupsStateLoading();
  }

  _GetCustomersGroupsStateLoaded done(
      BaseResponse<GetCustomersGroupsResponse> response) {
    return _GetCustomersGroupsStateLoaded(
      response,
    );
  }

  _SendPhoneNumberStateError error(Failure failure) {
    return _SendPhoneNumberStateError(
      failure,
    );
  }
}

/// @nodoc
const $GetCustomersGroupsState = _$GetCustomersGroupsStateTearOff();

/// @nodoc
mixin _$GetCustomersGroupsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersGroupsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersGroupsStateLoading value) loading,
    required TResult Function(_GetCustomersGroupsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomersGroupsStateCopyWith<$Res> {
  factory $GetCustomersGroupsStateCopyWith(GetCustomersGroupsState value,
          $Res Function(GetCustomersGroupsState) then) =
      _$GetCustomersGroupsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCustomersGroupsStateCopyWithImpl<$Res>
    implements $GetCustomersGroupsStateCopyWith<$Res> {
  _$GetCustomersGroupsStateCopyWithImpl(this._value, this._then);

  final GetCustomersGroupsState _value;
  // ignore: unused_field
  final $Res Function(GetCustomersGroupsState) _then;
}

/// @nodoc
abstract class _$SendNameInitalCopyWith<$Res> {
  factory _$SendNameInitalCopyWith(
          _SendNameInital value, $Res Function(_SendNameInital) then) =
      __$SendNameInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendNameInitalCopyWithImpl<$Res>
    extends _$GetCustomersGroupsStateCopyWithImpl<$Res>
    implements _$SendNameInitalCopyWith<$Res> {
  __$SendNameInitalCopyWithImpl(
      _SendNameInital _value, $Res Function(_SendNameInital) _then)
      : super(_value, (v) => _then(v as _SendNameInital));

  @override
  _SendNameInital get _value => super._value as _SendNameInital;
}

/// @nodoc

class _$_SendNameInital implements _SendNameInital {
  const _$_SendNameInital();

  @override
  String toString() {
    return 'GetCustomersGroupsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendNameInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersGroupsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersGroupsStateLoading value) loading,
    required TResult Function(_GetCustomersGroupsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendNameInital implements GetCustomersGroupsState {
  const factory _SendNameInital() = _$_SendNameInital;
}

/// @nodoc
abstract class $GetCustomersGroupsStateLoadingCopyWith<$Res> {
  factory $GetCustomersGroupsStateLoadingCopyWith(
          GetCustomersGroupsStateLoading value,
          $Res Function(GetCustomersGroupsStateLoading) then) =
      _$GetCustomersGroupsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCustomersGroupsStateLoadingCopyWithImpl<$Res>
    extends _$GetCustomersGroupsStateCopyWithImpl<$Res>
    implements $GetCustomersGroupsStateLoadingCopyWith<$Res> {
  _$GetCustomersGroupsStateLoadingCopyWithImpl(
      GetCustomersGroupsStateLoading _value,
      $Res Function(GetCustomersGroupsStateLoading) _then)
      : super(_value, (v) => _then(v as GetCustomersGroupsStateLoading));

  @override
  GetCustomersGroupsStateLoading get _value =>
      super._value as GetCustomersGroupsStateLoading;
}

/// @nodoc

class _$GetCustomersGroupsStateLoading
    implements GetCustomersGroupsStateLoading {
  const _$GetCustomersGroupsStateLoading();

  @override
  String toString() {
    return 'GetCustomersGroupsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCustomersGroupsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersGroupsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersGroupsStateLoading value) loading,
    required TResult Function(_GetCustomersGroupsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetCustomersGroupsStateLoading
    implements GetCustomersGroupsState {
  const factory GetCustomersGroupsStateLoading() =
      _$GetCustomersGroupsStateLoading;
}

/// @nodoc
abstract class _$GetCustomersGroupsStateLoadedCopyWith<$Res> {
  factory _$GetCustomersGroupsStateLoadedCopyWith(
          _GetCustomersGroupsStateLoaded value,
          $Res Function(_GetCustomersGroupsStateLoaded) then) =
      __$GetCustomersGroupsStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetCustomersGroupsResponse> response});
}

/// @nodoc
class __$GetCustomersGroupsStateLoadedCopyWithImpl<$Res>
    extends _$GetCustomersGroupsStateCopyWithImpl<$Res>
    implements _$GetCustomersGroupsStateLoadedCopyWith<$Res> {
  __$GetCustomersGroupsStateLoadedCopyWithImpl(
      _GetCustomersGroupsStateLoaded _value,
      $Res Function(_GetCustomersGroupsStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetCustomersGroupsStateLoaded));

  @override
  _GetCustomersGroupsStateLoaded get _value =>
      super._value as _GetCustomersGroupsStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetCustomersGroupsStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetCustomersGroupsResponse>,
    ));
  }
}

/// @nodoc

class _$_GetCustomersGroupsStateLoaded
    implements _GetCustomersGroupsStateLoaded {
  const _$_GetCustomersGroupsStateLoaded(this.response);

  @override
  final BaseResponse<GetCustomersGroupsResponse> response;

  @override
  String toString() {
    return 'GetCustomersGroupsState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCustomersGroupsStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetCustomersGroupsStateLoadedCopyWith<_GetCustomersGroupsStateLoaded>
      get copyWith => __$GetCustomersGroupsStateLoadedCopyWithImpl<
          _GetCustomersGroupsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersGroupsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersGroupsStateLoading value) loading,
    required TResult Function(_GetCustomersGroupsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetCustomersGroupsStateLoaded
    implements GetCustomersGroupsState {
  const factory _GetCustomersGroupsStateLoaded(
          BaseResponse<GetCustomersGroupsResponse> response) =
      _$_GetCustomersGroupsStateLoaded;

  BaseResponse<GetCustomersGroupsResponse> get response;
  @JsonKey(ignore: true)
  _$GetCustomersGroupsStateLoadedCopyWith<_GetCustomersGroupsStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendPhoneNumberStateErrorCopyWith<$Res> {
  factory _$SendPhoneNumberStateErrorCopyWith(_SendPhoneNumberStateError value,
          $Res Function(_SendPhoneNumberStateError) then) =
      __$SendPhoneNumberStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$SendPhoneNumberStateErrorCopyWithImpl<$Res>
    extends _$GetCustomersGroupsStateCopyWithImpl<$Res>
    implements _$SendPhoneNumberStateErrorCopyWith<$Res> {
  __$SendPhoneNumberStateErrorCopyWithImpl(_SendPhoneNumberStateError _value,
      $Res Function(_SendPhoneNumberStateError) _then)
      : super(_value, (v) => _then(v as _SendPhoneNumberStateError));

  @override
  _SendPhoneNumberStateError get _value =>
      super._value as _SendPhoneNumberStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SendPhoneNumberStateError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_SendPhoneNumberStateError implements _SendPhoneNumberStateError {
  const _$_SendPhoneNumberStateError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetCustomersGroupsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPhoneNumberStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith =>
          __$SendPhoneNumberStateErrorCopyWithImpl<_SendPhoneNumberStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersGroupsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersGroupsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersGroupsStateLoading value) loading,
    required TResult Function(_GetCustomersGroupsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersGroupsStateLoading value)? loading,
    TResult Function(_GetCustomersGroupsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetCustomersGroupsState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
