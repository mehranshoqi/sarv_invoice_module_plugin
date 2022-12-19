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
class _$GetProductTypesStateTearOff {
  const _$GetProductTypesStateTearOff();

  _GetProductTypesInital initial() {
    return const _GetProductTypesInital();
  }

  GetProductTypesStateLoading loading() {
    return const GetProductTypesStateLoading();
  }

  _GetProductTypesStateLoaded done(
      BaseResponse<GetProductTypesResponse> response) {
    return _GetProductTypesStateLoaded(
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
const $GetProductTypesState = _$GetProductTypesStateTearOff();

/// @nodoc
mixin _$GetProductTypesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductTypesResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductTypesInital value) initial,
    required TResult Function(GetProductTypesStateLoading value) loading,
    required TResult Function(_GetProductTypesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductTypesStateCopyWith<$Res> {
  factory $GetProductTypesStateCopyWith(GetProductTypesState value,
          $Res Function(GetProductTypesState) then) =
      _$GetProductTypesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductTypesStateCopyWithImpl<$Res>
    implements $GetProductTypesStateCopyWith<$Res> {
  _$GetProductTypesStateCopyWithImpl(this._value, this._then);

  final GetProductTypesState _value;
  // ignore: unused_field
  final $Res Function(GetProductTypesState) _then;
}

/// @nodoc
abstract class _$GetProductTypesInitalCopyWith<$Res> {
  factory _$GetProductTypesInitalCopyWith(_GetProductTypesInital value,
          $Res Function(_GetProductTypesInital) then) =
      __$GetProductTypesInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductTypesInitalCopyWithImpl<$Res>
    extends _$GetProductTypesStateCopyWithImpl<$Res>
    implements _$GetProductTypesInitalCopyWith<$Res> {
  __$GetProductTypesInitalCopyWithImpl(_GetProductTypesInital _value,
      $Res Function(_GetProductTypesInital) _then)
      : super(_value, (v) => _then(v as _GetProductTypesInital));

  @override
  _GetProductTypesInital get _value => super._value as _GetProductTypesInital;
}

/// @nodoc

class _$_GetProductTypesInital implements _GetProductTypesInital {
  const _$_GetProductTypesInital();

  @override
  String toString() {
    return 'GetProductTypesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProductTypesInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductTypesResponse> response)
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
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
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
    required TResult Function(_GetProductTypesInital value) initial,
    required TResult Function(GetProductTypesStateLoading value) loading,
    required TResult Function(_GetProductTypesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProductTypesInital implements GetProductTypesState {
  const factory _GetProductTypesInital() = _$_GetProductTypesInital;
}

/// @nodoc
abstract class $GetProductTypesStateLoadingCopyWith<$Res> {
  factory $GetProductTypesStateLoadingCopyWith(
          GetProductTypesStateLoading value,
          $Res Function(GetProductTypesStateLoading) then) =
      _$GetProductTypesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductTypesStateLoadingCopyWithImpl<$Res>
    extends _$GetProductTypesStateCopyWithImpl<$Res>
    implements $GetProductTypesStateLoadingCopyWith<$Res> {
  _$GetProductTypesStateLoadingCopyWithImpl(GetProductTypesStateLoading _value,
      $Res Function(GetProductTypesStateLoading) _then)
      : super(_value, (v) => _then(v as GetProductTypesStateLoading));

  @override
  GetProductTypesStateLoading get _value =>
      super._value as GetProductTypesStateLoading;
}

/// @nodoc

class _$GetProductTypesStateLoading implements GetProductTypesStateLoading {
  const _$GetProductTypesStateLoading();

  @override
  String toString() {
    return 'GetProductTypesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductTypesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductTypesResponse> response)
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
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
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
    required TResult Function(_GetProductTypesInital value) initial,
    required TResult Function(GetProductTypesStateLoading value) loading,
    required TResult Function(_GetProductTypesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetProductTypesStateLoading implements GetProductTypesState {
  const factory GetProductTypesStateLoading() = _$GetProductTypesStateLoading;
}

/// @nodoc
abstract class _$GetProductTypesStateLoadedCopyWith<$Res> {
  factory _$GetProductTypesStateLoadedCopyWith(
          _GetProductTypesStateLoaded value,
          $Res Function(_GetProductTypesStateLoaded) then) =
      __$GetProductTypesStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetProductTypesResponse> response});
}

/// @nodoc
class __$GetProductTypesStateLoadedCopyWithImpl<$Res>
    extends _$GetProductTypesStateCopyWithImpl<$Res>
    implements _$GetProductTypesStateLoadedCopyWith<$Res> {
  __$GetProductTypesStateLoadedCopyWithImpl(_GetProductTypesStateLoaded _value,
      $Res Function(_GetProductTypesStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetProductTypesStateLoaded));

  @override
  _GetProductTypesStateLoaded get _value =>
      super._value as _GetProductTypesStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetProductTypesStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetProductTypesResponse>,
    ));
  }
}

/// @nodoc

class _$_GetProductTypesStateLoaded implements _GetProductTypesStateLoaded {
  const _$_GetProductTypesStateLoaded(this.response);

  @override
  final BaseResponse<GetProductTypesResponse> response;

  @override
  String toString() {
    return 'GetProductTypesState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetProductTypesStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetProductTypesStateLoadedCopyWith<_GetProductTypesStateLoaded>
      get copyWith => __$GetProductTypesStateLoadedCopyWithImpl<
          _GetProductTypesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetProductTypesResponse> response)
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
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
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
    required TResult Function(_GetProductTypesInital value) initial,
    required TResult Function(GetProductTypesStateLoading value) loading,
    required TResult Function(_GetProductTypesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetProductTypesStateLoaded implements GetProductTypesState {
  const factory _GetProductTypesStateLoaded(
          BaseResponse<GetProductTypesResponse> response) =
      _$_GetProductTypesStateLoaded;

  BaseResponse<GetProductTypesResponse> get response;
  @JsonKey(ignore: true)
  _$GetProductTypesStateLoadedCopyWith<_GetProductTypesStateLoaded>
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
    extends _$GetProductTypesStateCopyWithImpl<$Res>
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
    return 'GetProductTypesState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<GetProductTypesResponse> response)
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
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetProductTypesResponse> response)? done,
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
    required TResult Function(_GetProductTypesInital value) initial,
    required TResult Function(GetProductTypesStateLoading value) loading,
    required TResult Function(_GetProductTypesStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductTypesInital value)? initial,
    TResult Function(GetProductTypesStateLoading value)? loading,
    TResult Function(_GetProductTypesStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetProductTypesState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
