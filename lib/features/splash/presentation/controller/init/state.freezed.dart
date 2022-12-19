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
class _$GetInitStateTearOff {
  const _$GetInitStateTearOff();

  _GetInitInital initial() {
    return const _GetInitInital();
  }

  GetInitStateLoading loading() {
    return const GetInitStateLoading();
  }

  _GetInitStateLoaded done(BaseResponse<InitResponse> response) {
    return _GetInitStateLoaded(
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
const $GetInitState = _$GetInitStateTearOff();

/// @nodoc
mixin _$GetInitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<InitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitInital value) initial,
    required TResult Function(GetInitStateLoading value) loading,
    required TResult Function(_GetInitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInitStateCopyWith<$Res> {
  factory $GetInitStateCopyWith(
          GetInitState value, $Res Function(GetInitState) then) =
      _$GetInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetInitStateCopyWithImpl<$Res> implements $GetInitStateCopyWith<$Res> {
  _$GetInitStateCopyWithImpl(this._value, this._then);

  final GetInitState _value;
  // ignore: unused_field
  final $Res Function(GetInitState) _then;
}

/// @nodoc
abstract class _$GetInitInitalCopyWith<$Res> {
  factory _$GetInitInitalCopyWith(
          _GetInitInital value, $Res Function(_GetInitInital) then) =
      __$GetInitInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetInitInitalCopyWithImpl<$Res>
    extends _$GetInitStateCopyWithImpl<$Res>
    implements _$GetInitInitalCopyWith<$Res> {
  __$GetInitInitalCopyWithImpl(
      _GetInitInital _value, $Res Function(_GetInitInital) _then)
      : super(_value, (v) => _then(v as _GetInitInital));

  @override
  _GetInitInital get _value => super._value as _GetInitInital;
}

/// @nodoc

class _$_GetInitInital implements _GetInitInital {
  const _$_GetInitInital();

  @override
  String toString() {
    return 'GetInitState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetInitInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<InitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
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
    required TResult Function(_GetInitInital value) initial,
    required TResult Function(GetInitStateLoading value) loading,
    required TResult Function(_GetInitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetInitInital implements GetInitState {
  const factory _GetInitInital() = _$_GetInitInital;
}

/// @nodoc
abstract class $GetInitStateLoadingCopyWith<$Res> {
  factory $GetInitStateLoadingCopyWith(
          GetInitStateLoading value, $Res Function(GetInitStateLoading) then) =
      _$GetInitStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetInitStateLoadingCopyWithImpl<$Res>
    extends _$GetInitStateCopyWithImpl<$Res>
    implements $GetInitStateLoadingCopyWith<$Res> {
  _$GetInitStateLoadingCopyWithImpl(
      GetInitStateLoading _value, $Res Function(GetInitStateLoading) _then)
      : super(_value, (v) => _then(v as GetInitStateLoading));

  @override
  GetInitStateLoading get _value => super._value as GetInitStateLoading;
}

/// @nodoc

class _$GetInitStateLoading implements GetInitStateLoading {
  const _$GetInitStateLoading();

  @override
  String toString() {
    return 'GetInitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetInitStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<InitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
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
    required TResult Function(_GetInitInital value) initial,
    required TResult Function(GetInitStateLoading value) loading,
    required TResult Function(_GetInitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetInitStateLoading implements GetInitState {
  const factory GetInitStateLoading() = _$GetInitStateLoading;
}

/// @nodoc
abstract class _$GetInitStateLoadedCopyWith<$Res> {
  factory _$GetInitStateLoadedCopyWith(
          _GetInitStateLoaded value, $Res Function(_GetInitStateLoaded) then) =
      __$GetInitStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<InitResponse> response});
}

/// @nodoc
class __$GetInitStateLoadedCopyWithImpl<$Res>
    extends _$GetInitStateCopyWithImpl<$Res>
    implements _$GetInitStateLoadedCopyWith<$Res> {
  __$GetInitStateLoadedCopyWithImpl(
      _GetInitStateLoaded _value, $Res Function(_GetInitStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetInitStateLoaded));

  @override
  _GetInitStateLoaded get _value => super._value as _GetInitStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetInitStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<InitResponse>,
    ));
  }
}

/// @nodoc

class _$_GetInitStateLoaded implements _GetInitStateLoaded {
  const _$_GetInitStateLoaded(this.response);

  @override
  final BaseResponse<InitResponse> response;

  @override
  String toString() {
    return 'GetInitState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetInitStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetInitStateLoadedCopyWith<_GetInitStateLoaded> get copyWith =>
      __$GetInitStateLoadedCopyWithImpl<_GetInitStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<InitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
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
    required TResult Function(_GetInitInital value) initial,
    required TResult Function(GetInitStateLoading value) loading,
    required TResult Function(_GetInitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetInitStateLoaded implements GetInitState {
  const factory _GetInitStateLoaded(BaseResponse<InitResponse> response) =
      _$_GetInitStateLoaded;

  BaseResponse<InitResponse> get response;
  @JsonKey(ignore: true)
  _$GetInitStateLoadedCopyWith<_GetInitStateLoaded> get copyWith =>
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
    extends _$GetInitStateCopyWithImpl<$Res>
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
    return 'GetInitState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<InitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<InitResponse> response)? done,
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
    required TResult Function(_GetInitInital value) initial,
    required TResult Function(GetInitStateLoading value) loading,
    required TResult Function(_GetInitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitInital value)? initial,
    TResult Function(GetInitStateLoading value)? loading,
    TResult Function(_GetInitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetInitState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
