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
class _$GetProductCategoriesStateTearOff {
  const _$GetProductCategoriesStateTearOff();

  _GetProductCategoriesInital initial() {
    return const _GetProductCategoriesInital();
  }

  GetProductCategoriesStateLoading loading() {
    return const GetProductCategoriesStateLoading();
  }

  _GetProductCategoriesStateLoaded done(
      BaseResponse<GetProductCategoriesResponse> response) {
    return _GetProductCategoriesStateLoaded(
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
const $GetProductCategoriesState = _$GetProductCategoriesStateTearOff();

/// @nodoc
mixin _$GetProductCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<GetProductCategoriesResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductCategoriesInital value) initial,
    required TResult Function(GetProductCategoriesStateLoading value) loading,
    required TResult Function(_GetProductCategoriesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductCategoriesStateCopyWith<$Res> {
  factory $GetProductCategoriesStateCopyWith(GetProductCategoriesState value,
          $Res Function(GetProductCategoriesState) then) =
      _$GetProductCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductCategoriesStateCopyWithImpl<$Res>
    implements $GetProductCategoriesStateCopyWith<$Res> {
  _$GetProductCategoriesStateCopyWithImpl(this._value, this._then);

  final GetProductCategoriesState _value;
  // ignore: unused_field
  final $Res Function(GetProductCategoriesState) _then;
}

/// @nodoc
abstract class _$GetProductCategoriesInitalCopyWith<$Res> {
  factory _$GetProductCategoriesInitalCopyWith(
          _GetProductCategoriesInital value,
          $Res Function(_GetProductCategoriesInital) then) =
      __$GetProductCategoriesInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductCategoriesInitalCopyWithImpl<$Res>
    extends _$GetProductCategoriesStateCopyWithImpl<$Res>
    implements _$GetProductCategoriesInitalCopyWith<$Res> {
  __$GetProductCategoriesInitalCopyWithImpl(_GetProductCategoriesInital _value,
      $Res Function(_GetProductCategoriesInital) _then)
      : super(_value, (v) => _then(v as _GetProductCategoriesInital));

  @override
  _GetProductCategoriesInital get _value =>
      super._value as _GetProductCategoriesInital;
}

/// @nodoc

class _$_GetProductCategoriesInital implements _GetProductCategoriesInital {
  const _$_GetProductCategoriesInital();

  @override
  String toString() {
    return 'GetProductCategoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetProductCategoriesInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<GetProductCategoriesResponse> response)
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
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
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
    required TResult Function(_GetProductCategoriesInital value) initial,
    required TResult Function(GetProductCategoriesStateLoading value) loading,
    required TResult Function(_GetProductCategoriesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProductCategoriesInital
    implements GetProductCategoriesState {
  const factory _GetProductCategoriesInital() = _$_GetProductCategoriesInital;
}

/// @nodoc
abstract class $GetProductCategoriesStateLoadingCopyWith<$Res> {
  factory $GetProductCategoriesStateLoadingCopyWith(
          GetProductCategoriesStateLoading value,
          $Res Function(GetProductCategoriesStateLoading) then) =
      _$GetProductCategoriesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductCategoriesStateLoadingCopyWithImpl<$Res>
    extends _$GetProductCategoriesStateCopyWithImpl<$Res>
    implements $GetProductCategoriesStateLoadingCopyWith<$Res> {
  _$GetProductCategoriesStateLoadingCopyWithImpl(
      GetProductCategoriesStateLoading _value,
      $Res Function(GetProductCategoriesStateLoading) _then)
      : super(_value, (v) => _then(v as GetProductCategoriesStateLoading));

  @override
  GetProductCategoriesStateLoading get _value =>
      super._value as GetProductCategoriesStateLoading;
}

/// @nodoc

class _$GetProductCategoriesStateLoading
    implements GetProductCategoriesStateLoading {
  const _$GetProductCategoriesStateLoading();

  @override
  String toString() {
    return 'GetProductCategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductCategoriesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<GetProductCategoriesResponse> response)
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
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
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
    required TResult Function(_GetProductCategoriesInital value) initial,
    required TResult Function(GetProductCategoriesStateLoading value) loading,
    required TResult Function(_GetProductCategoriesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetProductCategoriesStateLoading
    implements GetProductCategoriesState {
  const factory GetProductCategoriesStateLoading() =
      _$GetProductCategoriesStateLoading;
}

/// @nodoc
abstract class _$GetProductCategoriesStateLoadedCopyWith<$Res> {
  factory _$GetProductCategoriesStateLoadedCopyWith(
          _GetProductCategoriesStateLoaded value,
          $Res Function(_GetProductCategoriesStateLoaded) then) =
      __$GetProductCategoriesStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetProductCategoriesResponse> response});
}

/// @nodoc
class __$GetProductCategoriesStateLoadedCopyWithImpl<$Res>
    extends _$GetProductCategoriesStateCopyWithImpl<$Res>
    implements _$GetProductCategoriesStateLoadedCopyWith<$Res> {
  __$GetProductCategoriesStateLoadedCopyWithImpl(
      _GetProductCategoriesStateLoaded _value,
      $Res Function(_GetProductCategoriesStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetProductCategoriesStateLoaded));

  @override
  _GetProductCategoriesStateLoaded get _value =>
      super._value as _GetProductCategoriesStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetProductCategoriesStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetProductCategoriesResponse>,
    ));
  }
}

/// @nodoc

class _$_GetProductCategoriesStateLoaded
    implements _GetProductCategoriesStateLoaded {
  const _$_GetProductCategoriesStateLoaded(this.response);

  @override
  final BaseResponse<GetProductCategoriesResponse> response;

  @override
  String toString() {
    return 'GetProductCategoriesState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetProductCategoriesStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetProductCategoriesStateLoadedCopyWith<_GetProductCategoriesStateLoaded>
      get copyWith => __$GetProductCategoriesStateLoadedCopyWithImpl<
          _GetProductCategoriesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<GetProductCategoriesResponse> response)
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
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
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
    required TResult Function(_GetProductCategoriesInital value) initial,
    required TResult Function(GetProductCategoriesStateLoading value) loading,
    required TResult Function(_GetProductCategoriesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetProductCategoriesStateLoaded
    implements GetProductCategoriesState {
  const factory _GetProductCategoriesStateLoaded(
          BaseResponse<GetProductCategoriesResponse> response) =
      _$_GetProductCategoriesStateLoaded;

  BaseResponse<GetProductCategoriesResponse> get response;
  @JsonKey(ignore: true)
  _$GetProductCategoriesStateLoadedCopyWith<_GetProductCategoriesStateLoaded>
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
    extends _$GetProductCategoriesStateCopyWithImpl<$Res>
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
    return 'GetProductCategoriesState.error(failure: $failure)';
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
    required TResult Function(
            BaseResponse<GetProductCategoriesResponse> response)
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
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductCategoriesResponse> response)? done,
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
    required TResult Function(_GetProductCategoriesInital value) initial,
    required TResult Function(GetProductCategoriesStateLoading value) loading,
    required TResult Function(_GetProductCategoriesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductCategoriesInital value)? initial,
    TResult Function(GetProductCategoriesStateLoading value)? loading,
    TResult Function(_GetProductCategoriesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetProductCategoriesState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
