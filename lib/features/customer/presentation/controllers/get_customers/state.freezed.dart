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
class _$GetCustomersStateTearOff {
  const _$GetCustomersStateTearOff();

  _SendNameInital initial() {
    return const _SendNameInital();
  }

  GetCustomersStateLoading loading() {
    return const GetCustomersStateLoading();
  }

  _GetCustomersStateLoaded done(BaseResponse<GetCustomersResponse> response) {
    return _GetCustomersStateLoaded(
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
const $GetCustomersState = _$GetCustomersStateTearOff();

/// @nodoc
mixin _$GetCustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetCustomersStateLoading value) loading,
    required TResult Function(_GetCustomersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomersStateCopyWith<$Res> {
  factory $GetCustomersStateCopyWith(
          GetCustomersState value, $Res Function(GetCustomersState) then) =
      _$GetCustomersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCustomersStateCopyWithImpl<$Res>
    implements $GetCustomersStateCopyWith<$Res> {
  _$GetCustomersStateCopyWithImpl(this._value, this._then);

  final GetCustomersState _value;
  // ignore: unused_field
  final $Res Function(GetCustomersState) _then;
}

/// @nodoc
abstract class _$SendNameInitalCopyWith<$Res> {
  factory _$SendNameInitalCopyWith(
          _SendNameInital value, $Res Function(_SendNameInital) then) =
      __$SendNameInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendNameInitalCopyWithImpl<$Res>
    extends _$GetCustomersStateCopyWithImpl<$Res>
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
    return 'GetCustomersState.initial()';
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
    required TResult Function(BaseResponse<GetCustomersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
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
    required TResult Function(GetCustomersStateLoading value) loading,
    required TResult Function(_GetCustomersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendNameInital implements GetCustomersState {
  const factory _SendNameInital() = _$_SendNameInital;
}

/// @nodoc
abstract class $GetCustomersStateLoadingCopyWith<$Res> {
  factory $GetCustomersStateLoadingCopyWith(GetCustomersStateLoading value,
          $Res Function(GetCustomersStateLoading) then) =
      _$GetCustomersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCustomersStateLoadingCopyWithImpl<$Res>
    extends _$GetCustomersStateCopyWithImpl<$Res>
    implements $GetCustomersStateLoadingCopyWith<$Res> {
  _$GetCustomersStateLoadingCopyWithImpl(GetCustomersStateLoading _value,
      $Res Function(GetCustomersStateLoading) _then)
      : super(_value, (v) => _then(v as GetCustomersStateLoading));

  @override
  GetCustomersStateLoading get _value =>
      super._value as GetCustomersStateLoading;
}

/// @nodoc

class _$GetCustomersStateLoading implements GetCustomersStateLoading {
  const _$GetCustomersStateLoading();

  @override
  String toString() {
    return 'GetCustomersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCustomersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
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
    required TResult Function(GetCustomersStateLoading value) loading,
    required TResult Function(_GetCustomersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetCustomersStateLoading implements GetCustomersState {
  const factory GetCustomersStateLoading() = _$GetCustomersStateLoading;
}

/// @nodoc
abstract class _$GetCustomersStateLoadedCopyWith<$Res> {
  factory _$GetCustomersStateLoadedCopyWith(_GetCustomersStateLoaded value,
          $Res Function(_GetCustomersStateLoaded) then) =
      __$GetCustomersStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetCustomersResponse> response});
}

/// @nodoc
class __$GetCustomersStateLoadedCopyWithImpl<$Res>
    extends _$GetCustomersStateCopyWithImpl<$Res>
    implements _$GetCustomersStateLoadedCopyWith<$Res> {
  __$GetCustomersStateLoadedCopyWithImpl(_GetCustomersStateLoaded _value,
      $Res Function(_GetCustomersStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetCustomersStateLoaded));

  @override
  _GetCustomersStateLoaded get _value =>
      super._value as _GetCustomersStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetCustomersStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetCustomersResponse>,
    ));
  }
}

/// @nodoc

class _$_GetCustomersStateLoaded implements _GetCustomersStateLoaded {
  const _$_GetCustomersStateLoaded(this.response);

  @override
  final BaseResponse<GetCustomersResponse> response;

  @override
  String toString() {
    return 'GetCustomersState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCustomersStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetCustomersStateLoadedCopyWith<_GetCustomersStateLoaded> get copyWith =>
      __$GetCustomersStateLoadedCopyWithImpl<_GetCustomersStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetCustomersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
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
    required TResult Function(GetCustomersStateLoading value) loading,
    required TResult Function(_GetCustomersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetCustomersStateLoaded implements GetCustomersState {
  const factory _GetCustomersStateLoaded(
      BaseResponse<GetCustomersResponse> response) = _$_GetCustomersStateLoaded;

  BaseResponse<GetCustomersResponse> get response;
  @JsonKey(ignore: true)
  _$GetCustomersStateLoadedCopyWith<_GetCustomersStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$GetCustomersStateCopyWithImpl<$Res>
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
    return 'GetCustomersState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetCustomersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetCustomersResponse> response)? done,
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
    required TResult Function(GetCustomersStateLoading value) loading,
    required TResult Function(_GetCustomersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetCustomersStateLoading value)? loading,
    TResult Function(_GetCustomersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetCustomersState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
