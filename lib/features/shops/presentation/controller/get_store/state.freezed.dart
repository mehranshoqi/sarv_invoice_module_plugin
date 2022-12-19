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
class _$GetStoresStateTearOff {
  const _$GetStoresStateTearOff();

  _GetStoresInital initial() {
    return const _GetStoresInital();
  }

  GetStoresStateLoading loading() {
    return const GetStoresStateLoading();
  }

  _GetStoresStateLoaded done(BaseResponse<GetStoresResponse> response) {
    return _GetStoresStateLoaded(
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
const $GetStoresState = _$GetStoresStateTearOff();

/// @nodoc
mixin _$GetStoresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetStoresResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStoresInital value) initial,
    required TResult Function(GetStoresStateLoading value) loading,
    required TResult Function(_GetStoresStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoresStateCopyWith<$Res> {
  factory $GetStoresStateCopyWith(
          GetStoresState value, $Res Function(GetStoresState) then) =
      _$GetStoresStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetStoresStateCopyWithImpl<$Res>
    implements $GetStoresStateCopyWith<$Res> {
  _$GetStoresStateCopyWithImpl(this._value, this._then);

  final GetStoresState _value;
  // ignore: unused_field
  final $Res Function(GetStoresState) _then;
}

/// @nodoc
abstract class _$GetStoresInitalCopyWith<$Res> {
  factory _$GetStoresInitalCopyWith(
          _GetStoresInital value, $Res Function(_GetStoresInital) then) =
      __$GetStoresInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetStoresInitalCopyWithImpl<$Res>
    extends _$GetStoresStateCopyWithImpl<$Res>
    implements _$GetStoresInitalCopyWith<$Res> {
  __$GetStoresInitalCopyWithImpl(
      _GetStoresInital _value, $Res Function(_GetStoresInital) _then)
      : super(_value, (v) => _then(v as _GetStoresInital));

  @override
  _GetStoresInital get _value => super._value as _GetStoresInital;
}

/// @nodoc

class _$_GetStoresInital implements _GetStoresInital {
  const _$_GetStoresInital();

  @override
  String toString() {
    return 'GetStoresState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetStoresInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetStoresResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
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
    required TResult Function(_GetStoresInital value) initial,
    required TResult Function(GetStoresStateLoading value) loading,
    required TResult Function(_GetStoresStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetStoresInital implements GetStoresState {
  const factory _GetStoresInital() = _$_GetStoresInital;
}

/// @nodoc
abstract class $GetStoresStateLoadingCopyWith<$Res> {
  factory $GetStoresStateLoadingCopyWith(GetStoresStateLoading value,
          $Res Function(GetStoresStateLoading) then) =
      _$GetStoresStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetStoresStateLoadingCopyWithImpl<$Res>
    extends _$GetStoresStateCopyWithImpl<$Res>
    implements $GetStoresStateLoadingCopyWith<$Res> {
  _$GetStoresStateLoadingCopyWithImpl(
      GetStoresStateLoading _value, $Res Function(GetStoresStateLoading) _then)
      : super(_value, (v) => _then(v as GetStoresStateLoading));

  @override
  GetStoresStateLoading get _value => super._value as GetStoresStateLoading;
}

/// @nodoc

class _$GetStoresStateLoading implements GetStoresStateLoading {
  const _$GetStoresStateLoading();

  @override
  String toString() {
    return 'GetStoresState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetStoresStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetStoresResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
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
    required TResult Function(_GetStoresInital value) initial,
    required TResult Function(GetStoresStateLoading value) loading,
    required TResult Function(_GetStoresStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetStoresStateLoading implements GetStoresState {
  const factory GetStoresStateLoading() = _$GetStoresStateLoading;
}

/// @nodoc
abstract class _$GetStoresStateLoadedCopyWith<$Res> {
  factory _$GetStoresStateLoadedCopyWith(_GetStoresStateLoaded value,
          $Res Function(_GetStoresStateLoaded) then) =
      __$GetStoresStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetStoresResponse> response});
}

/// @nodoc
class __$GetStoresStateLoadedCopyWithImpl<$Res>
    extends _$GetStoresStateCopyWithImpl<$Res>
    implements _$GetStoresStateLoadedCopyWith<$Res> {
  __$GetStoresStateLoadedCopyWithImpl(
      _GetStoresStateLoaded _value, $Res Function(_GetStoresStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetStoresStateLoaded));

  @override
  _GetStoresStateLoaded get _value => super._value as _GetStoresStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetStoresStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetStoresResponse>,
    ));
  }
}

/// @nodoc

class _$_GetStoresStateLoaded implements _GetStoresStateLoaded {
  const _$_GetStoresStateLoaded(this.response);

  @override
  final BaseResponse<GetStoresResponse> response;

  @override
  String toString() {
    return 'GetStoresState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetStoresStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetStoresStateLoadedCopyWith<_GetStoresStateLoaded> get copyWith =>
      __$GetStoresStateLoadedCopyWithImpl<_GetStoresStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetStoresResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
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
    required TResult Function(_GetStoresInital value) initial,
    required TResult Function(GetStoresStateLoading value) loading,
    required TResult Function(_GetStoresStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetStoresStateLoaded implements GetStoresState {
  const factory _GetStoresStateLoaded(
      BaseResponse<GetStoresResponse> response) = _$_GetStoresStateLoaded;

  BaseResponse<GetStoresResponse> get response;
  @JsonKey(ignore: true)
  _$GetStoresStateLoadedCopyWith<_GetStoresStateLoaded> get copyWith =>
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
    extends _$GetStoresStateCopyWithImpl<$Res>
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
    return 'GetStoresState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetStoresResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetStoresResponse> response)? done,
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
    required TResult Function(_GetStoresInital value) initial,
    required TResult Function(GetStoresStateLoading value) loading,
    required TResult Function(_GetStoresStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoresInital value)? initial,
    TResult Function(GetStoresStateLoading value)? loading,
    TResult Function(_GetStoresStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetStoresState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
