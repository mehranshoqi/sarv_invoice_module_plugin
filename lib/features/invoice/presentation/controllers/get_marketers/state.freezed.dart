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
class _$GetMarketersStateTearOff {
  const _$GetMarketersStateTearOff();

  _GetMarketersInital initial() {
    return const _GetMarketersInital();
  }

  GetMarketersStateLoading loading() {
    return const GetMarketersStateLoading();
  }

  _GetMarketersStateLoaded done(BaseResponse<GetMarketersResponse> response) {
    return _GetMarketersStateLoaded(
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
const $GetMarketersState = _$GetMarketersStateTearOff();

/// @nodoc
mixin _$GetMarketersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetMarketersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMarketersInital value) initial,
    required TResult Function(GetMarketersStateLoading value) loading,
    required TResult Function(_GetMarketersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMarketersStateCopyWith<$Res> {
  factory $GetMarketersStateCopyWith(
          GetMarketersState value, $Res Function(GetMarketersState) then) =
      _$GetMarketersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMarketersStateCopyWithImpl<$Res>
    implements $GetMarketersStateCopyWith<$Res> {
  _$GetMarketersStateCopyWithImpl(this._value, this._then);

  final GetMarketersState _value;
  // ignore: unused_field
  final $Res Function(GetMarketersState) _then;
}

/// @nodoc
abstract class _$GetMarketersInitalCopyWith<$Res> {
  factory _$GetMarketersInitalCopyWith(
          _GetMarketersInital value, $Res Function(_GetMarketersInital) then) =
      __$GetMarketersInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMarketersInitalCopyWithImpl<$Res>
    extends _$GetMarketersStateCopyWithImpl<$Res>
    implements _$GetMarketersInitalCopyWith<$Res> {
  __$GetMarketersInitalCopyWithImpl(
      _GetMarketersInital _value, $Res Function(_GetMarketersInital) _then)
      : super(_value, (v) => _then(v as _GetMarketersInital));

  @override
  _GetMarketersInital get _value => super._value as _GetMarketersInital;
}

/// @nodoc

class _$_GetMarketersInital implements _GetMarketersInital {
  const _$_GetMarketersInital();

  @override
  String toString() {
    return 'GetMarketersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetMarketersInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetMarketersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
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
    required TResult Function(_GetMarketersInital value) initial,
    required TResult Function(GetMarketersStateLoading value) loading,
    required TResult Function(_GetMarketersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetMarketersInital implements GetMarketersState {
  const factory _GetMarketersInital() = _$_GetMarketersInital;
}

/// @nodoc
abstract class $GetMarketersStateLoadingCopyWith<$Res> {
  factory $GetMarketersStateLoadingCopyWith(GetMarketersStateLoading value,
          $Res Function(GetMarketersStateLoading) then) =
      _$GetMarketersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMarketersStateLoadingCopyWithImpl<$Res>
    extends _$GetMarketersStateCopyWithImpl<$Res>
    implements $GetMarketersStateLoadingCopyWith<$Res> {
  _$GetMarketersStateLoadingCopyWithImpl(GetMarketersStateLoading _value,
      $Res Function(GetMarketersStateLoading) _then)
      : super(_value, (v) => _then(v as GetMarketersStateLoading));

  @override
  GetMarketersStateLoading get _value =>
      super._value as GetMarketersStateLoading;
}

/// @nodoc

class _$GetMarketersStateLoading implements GetMarketersStateLoading {
  const _$GetMarketersStateLoading();

  @override
  String toString() {
    return 'GetMarketersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetMarketersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetMarketersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
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
    required TResult Function(_GetMarketersInital value) initial,
    required TResult Function(GetMarketersStateLoading value) loading,
    required TResult Function(_GetMarketersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetMarketersStateLoading implements GetMarketersState {
  const factory GetMarketersStateLoading() = _$GetMarketersStateLoading;
}

/// @nodoc
abstract class _$GetMarketersStateLoadedCopyWith<$Res> {
  factory _$GetMarketersStateLoadedCopyWith(_GetMarketersStateLoaded value,
          $Res Function(_GetMarketersStateLoaded) then) =
      __$GetMarketersStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetMarketersResponse> response});
}

/// @nodoc
class __$GetMarketersStateLoadedCopyWithImpl<$Res>
    extends _$GetMarketersStateCopyWithImpl<$Res>
    implements _$GetMarketersStateLoadedCopyWith<$Res> {
  __$GetMarketersStateLoadedCopyWithImpl(_GetMarketersStateLoaded _value,
      $Res Function(_GetMarketersStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetMarketersStateLoaded));

  @override
  _GetMarketersStateLoaded get _value =>
      super._value as _GetMarketersStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetMarketersStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetMarketersResponse>,
    ));
  }
}

/// @nodoc

class _$_GetMarketersStateLoaded implements _GetMarketersStateLoaded {
  const _$_GetMarketersStateLoaded(this.response);

  @override
  final BaseResponse<GetMarketersResponse> response;

  @override
  String toString() {
    return 'GetMarketersState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMarketersStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetMarketersStateLoadedCopyWith<_GetMarketersStateLoaded> get copyWith =>
      __$GetMarketersStateLoadedCopyWithImpl<_GetMarketersStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetMarketersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
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
    required TResult Function(_GetMarketersInital value) initial,
    required TResult Function(GetMarketersStateLoading value) loading,
    required TResult Function(_GetMarketersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetMarketersStateLoaded implements GetMarketersState {
  const factory _GetMarketersStateLoaded(
      BaseResponse<GetMarketersResponse> response) = _$_GetMarketersStateLoaded;

  BaseResponse<GetMarketersResponse> get response;
  @JsonKey(ignore: true)
  _$GetMarketersStateLoadedCopyWith<_GetMarketersStateLoaded> get copyWith =>
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
    extends _$GetMarketersStateCopyWithImpl<$Res>
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
    return 'GetMarketersState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetMarketersResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetMarketersResponse> response)? done,
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
    required TResult Function(_GetMarketersInital value) initial,
    required TResult Function(GetMarketersStateLoading value) loading,
    required TResult Function(_GetMarketersStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarketersInital value)? initial,
    TResult Function(GetMarketersStateLoading value)? loading,
    TResult Function(_GetMarketersStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetMarketersState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
