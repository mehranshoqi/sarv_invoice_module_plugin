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
class _$GetProductsStateTearOff {
  const _$GetProductsStateTearOff();

  _CreateProductInital initial() {
    return const _CreateProductInital();
  }

  GetProductsStateLoading loading() {
    return const GetProductsStateLoading();
  }

  _GetProductsStateLoaded done(BaseResponse<GetProductsResponse> response) {
    return _GetProductsStateLoaded(
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
const $GetProductsState = _$GetProductsStateTearOff();

/// @nodoc
mixin _$GetProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(GetProductsStateLoading value) loading,
    required TResult Function(_GetProductsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsStateCopyWith<$Res> {
  factory $GetProductsStateCopyWith(
          GetProductsState value, $Res Function(GetProductsState) then) =
      _$GetProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsStateCopyWithImpl<$Res>
    implements $GetProductsStateCopyWith<$Res> {
  _$GetProductsStateCopyWithImpl(this._value, this._then);

  final GetProductsState _value;
  // ignore: unused_field
  final $Res Function(GetProductsState) _then;
}

/// @nodoc
abstract class _$CreateProductInitalCopyWith<$Res> {
  factory _$CreateProductInitalCopyWith(_CreateProductInital value,
          $Res Function(_CreateProductInital) then) =
      __$CreateProductInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductInitalCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
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
    return 'GetProductsState.initial()';
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
    required TResult Function(BaseResponse<GetProductsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
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
    required TResult Function(GetProductsStateLoading value) loading,
    required TResult Function(_GetProductsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductInital implements GetProductsState {
  const factory _CreateProductInital() = _$_CreateProductInital;
}

/// @nodoc
abstract class $GetProductsStateLoadingCopyWith<$Res> {
  factory $GetProductsStateLoadingCopyWith(GetProductsStateLoading value,
          $Res Function(GetProductsStateLoading) then) =
      _$GetProductsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsStateLoadingCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
    implements $GetProductsStateLoadingCopyWith<$Res> {
  _$GetProductsStateLoadingCopyWithImpl(GetProductsStateLoading _value,
      $Res Function(GetProductsStateLoading) _then)
      : super(_value, (v) => _then(v as GetProductsStateLoading));

  @override
  GetProductsStateLoading get _value => super._value as GetProductsStateLoading;
}

/// @nodoc

class _$GetProductsStateLoading implements GetProductsStateLoading {
  const _$GetProductsStateLoading();

  @override
  String toString() {
    return 'GetProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProductsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
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
    required TResult Function(GetProductsStateLoading value) loading,
    required TResult Function(_GetProductsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetProductsStateLoading implements GetProductsState {
  const factory GetProductsStateLoading() = _$GetProductsStateLoading;
}

/// @nodoc
abstract class _$GetProductsStateLoadedCopyWith<$Res> {
  factory _$GetProductsStateLoadedCopyWith(_GetProductsStateLoaded value,
          $Res Function(_GetProductsStateLoaded) then) =
      __$GetProductsStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetProductsResponse> response});
}

/// @nodoc
class __$GetProductsStateLoadedCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
    implements _$GetProductsStateLoadedCopyWith<$Res> {
  __$GetProductsStateLoadedCopyWithImpl(_GetProductsStateLoaded _value,
      $Res Function(_GetProductsStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetProductsStateLoaded));

  @override
  _GetProductsStateLoaded get _value => super._value as _GetProductsStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetProductsStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetProductsResponse>,
    ));
  }
}

/// @nodoc

class _$_GetProductsStateLoaded implements _GetProductsStateLoaded {
  const _$_GetProductsStateLoaded(this.response);

  @override
  final BaseResponse<GetProductsResponse> response;

  @override
  String toString() {
    return 'GetProductsState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetProductsStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetProductsStateLoadedCopyWith<_GetProductsStateLoaded> get copyWith =>
      __$GetProductsStateLoadedCopyWithImpl<_GetProductsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
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
    required TResult Function(GetProductsStateLoading value) loading,
    required TResult Function(_GetProductsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetProductsStateLoaded implements GetProductsState {
  const factory _GetProductsStateLoaded(
      BaseResponse<GetProductsResponse> response) = _$_GetProductsStateLoaded;

  BaseResponse<GetProductsResponse> get response;
  @JsonKey(ignore: true)
  _$GetProductsStateLoadedCopyWith<_GetProductsStateLoaded> get copyWith =>
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
    extends _$GetProductsStateCopyWithImpl<$Res>
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
    return 'GetProductsState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetProductsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductsResponse> response)? done,
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
    required TResult Function(GetProductsStateLoading value) loading,
    required TResult Function(_GetProductsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(GetProductsStateLoading value)? loading,
    TResult Function(_GetProductsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetProductsState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
