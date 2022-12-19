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
class _$GetUnitsStateTearOff {
  const _$GetUnitsStateTearOff();

  _CreateProductInital initial() {
    return const _CreateProductInital();
  }

  GetUnitsStateLoading loading() {
    return const GetUnitsStateLoading();
  }

  _GetUnitsStateLoaded done(BaseResponse<GetProductUnitsResponse> response) {
    return _GetUnitsStateLoaded(
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
const $GetUnitsState = _$GetUnitsStateTearOff();

/// @nodoc
mixin _$GetUnitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductUnitsResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetUnitsStateLoading value) loading,
    required TResult Function(_GetUnitsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUnitsStateCopyWith<$Res> {
  factory $GetUnitsStateCopyWith(
          GetUnitsState value, $Res Function(GetUnitsState) then) =
      _$GetUnitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUnitsStateCopyWithImpl<$Res>
    implements $GetUnitsStateCopyWith<$Res> {
  _$GetUnitsStateCopyWithImpl(this._value, this._then);

  final GetUnitsState _value;
  // ignore: unused_field
  final $Res Function(GetUnitsState) _then;
}

/// @nodoc
abstract class _$CreateProductInitalCopyWith<$Res> {
  factory _$CreateProductInitalCopyWith(_CreateProductInital value,
          $Res Function(_CreateProductInital) then) =
      __$CreateProductInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductInitalCopyWithImpl<$Res>
    extends _$GetUnitsStateCopyWithImpl<$Res>
    implements _$CreateProductInitalCopyWith<$Res> {
  __$CreateProductInitalCopyWithImpl(
      _CreateProductInital _value, $Res Function(_CreateProductInital) _then)
      : super(_value, (v) => _then(v as _CreateProductInital));

  @override
  _CreateProductInital get _value => super._value as _CreateProductInital;
}

/// @nodoc

class _$_CreateProductInital implements _CreateProductInital {
  const _$_CreateProductInital();

  @override
  String toString() {
    return 'GetUnitsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateProductInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductUnitsResponse> response)
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
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
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
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetUnitsStateLoading value) loading,
    required TResult Function(_GetUnitsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductInital implements GetUnitsState {
  const factory _CreateProductInital() = _$_CreateProductInital;
}

/// @nodoc
abstract class $GetUnitsStateLoadingCopyWith<$Res> {
  factory $GetUnitsStateLoadingCopyWith(GetUnitsStateLoading value,
          $Res Function(GetUnitsStateLoading) then) =
      _$GetUnitsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUnitsStateLoadingCopyWithImpl<$Res>
    extends _$GetUnitsStateCopyWithImpl<$Res>
    implements $GetUnitsStateLoadingCopyWith<$Res> {
  _$GetUnitsStateLoadingCopyWithImpl(
      GetUnitsStateLoading _value, $Res Function(GetUnitsStateLoading) _then)
      : super(_value, (v) => _then(v as GetUnitsStateLoading));

  @override
  GetUnitsStateLoading get _value => super._value as GetUnitsStateLoading;
}

/// @nodoc

class _$GetUnitsStateLoading implements GetUnitsStateLoading {
  const _$GetUnitsStateLoading();

  @override
  String toString() {
    return 'GetUnitsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUnitsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductUnitsResponse> response)
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
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
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
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetUnitsStateLoading value) loading,
    required TResult Function(_GetUnitsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetUnitsStateLoading implements GetUnitsState {
  const factory GetUnitsStateLoading() = _$GetUnitsStateLoading;
}

/// @nodoc
abstract class _$GetUnitsStateLoadedCopyWith<$Res> {
  factory _$GetUnitsStateLoadedCopyWith(_GetUnitsStateLoaded value,
          $Res Function(_GetUnitsStateLoaded) then) =
      __$GetUnitsStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetProductUnitsResponse> response});
}

/// @nodoc
class __$GetUnitsStateLoadedCopyWithImpl<$Res>
    extends _$GetUnitsStateCopyWithImpl<$Res>
    implements _$GetUnitsStateLoadedCopyWith<$Res> {
  __$GetUnitsStateLoadedCopyWithImpl(
      _GetUnitsStateLoaded _value, $Res Function(_GetUnitsStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetUnitsStateLoaded));

  @override
  _GetUnitsStateLoaded get _value => super._value as _GetUnitsStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetUnitsStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetProductUnitsResponse>,
    ));
  }
}

/// @nodoc

class _$_GetUnitsStateLoaded implements _GetUnitsStateLoaded {
  const _$_GetUnitsStateLoaded(this.response);

  @override
  final BaseResponse<GetProductUnitsResponse> response;

  @override
  String toString() {
    return 'GetUnitsState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUnitsStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetUnitsStateLoadedCopyWith<_GetUnitsStateLoaded> get copyWith =>
      __$GetUnitsStateLoadedCopyWithImpl<_GetUnitsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductUnitsResponse> response)
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
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
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
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetUnitsStateLoading value) loading,
    required TResult Function(_GetUnitsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetUnitsStateLoaded implements GetUnitsState {
  const factory _GetUnitsStateLoaded(
      BaseResponse<GetProductUnitsResponse> response) = _$_GetUnitsStateLoaded;

  BaseResponse<GetProductUnitsResponse> get response;
  @JsonKey(ignore: true)
  _$GetUnitsStateLoadedCopyWith<_GetUnitsStateLoaded> get copyWith =>
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
    extends _$GetUnitsStateCopyWithImpl<$Res>
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
    return 'GetUnitsState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetProductUnitsResponse> response)
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
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductUnitsResponse> response)? done,
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
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetUnitsStateLoading value) loading,
    required TResult Function(_GetUnitsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetUnitsStateLoading value)? loading,
    TResult Function(_GetUnitsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetUnitsState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
