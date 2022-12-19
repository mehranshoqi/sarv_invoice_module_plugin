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
class _$CreateMarketerStateTearOff {
  const _$CreateMarketerStateTearOff();

  _CreateMarketerInital initial() {
    return const _CreateMarketerInital();
  }

  CreateMarketerStateLoading loading() {
    return const CreateMarketerStateLoading();
  }

  _CreateMarketerStateLoaded done(
      BaseResponse<CreateMarketerResponse> response) {
    return _CreateMarketerStateLoaded(
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
const $CreateMarketerState = _$CreateMarketerStateTearOff();

/// @nodoc
mixin _$CreateMarketerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateMarketerResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMarketerInital value) initial,
    required TResult Function(CreateMarketerStateLoading value) loading,
    required TResult Function(_CreateMarketerStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMarketerStateCopyWith<$Res> {
  factory $CreateMarketerStateCopyWith(
          CreateMarketerState value, $Res Function(CreateMarketerState) then) =
      _$CreateMarketerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateMarketerStateCopyWithImpl<$Res>
    implements $CreateMarketerStateCopyWith<$Res> {
  _$CreateMarketerStateCopyWithImpl(this._value, this._then);

  final CreateMarketerState _value;
  // ignore: unused_field
  final $Res Function(CreateMarketerState) _then;
}

/// @nodoc
abstract class _$CreateMarketerInitalCopyWith<$Res> {
  factory _$CreateMarketerInitalCopyWith(_CreateMarketerInital value,
          $Res Function(_CreateMarketerInital) then) =
      __$CreateMarketerInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateMarketerInitalCopyWithImpl<$Res>
    extends _$CreateMarketerStateCopyWithImpl<$Res>
    implements _$CreateMarketerInitalCopyWith<$Res> {
  __$CreateMarketerInitalCopyWithImpl(
      _CreateMarketerInital _value, $Res Function(_CreateMarketerInital) _then)
      : super(_value, (v) => _then(v as _CreateMarketerInital));

  @override
  _CreateMarketerInital get _value => super._value as _CreateMarketerInital;
}

/// @nodoc

class _$_CreateMarketerInital implements _CreateMarketerInital {
  const _$_CreateMarketerInital();

  @override
  String toString() {
    return 'CreateMarketerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateMarketerInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateMarketerResponse> response)
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
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
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
    required TResult Function(_CreateMarketerInital value) initial,
    required TResult Function(CreateMarketerStateLoading value) loading,
    required TResult Function(_CreateMarketerStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateMarketerInital implements CreateMarketerState {
  const factory _CreateMarketerInital() = _$_CreateMarketerInital;
}

/// @nodoc
abstract class $CreateMarketerStateLoadingCopyWith<$Res> {
  factory $CreateMarketerStateLoadingCopyWith(CreateMarketerStateLoading value,
          $Res Function(CreateMarketerStateLoading) then) =
      _$CreateMarketerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateMarketerStateLoadingCopyWithImpl<$Res>
    extends _$CreateMarketerStateCopyWithImpl<$Res>
    implements $CreateMarketerStateLoadingCopyWith<$Res> {
  _$CreateMarketerStateLoadingCopyWithImpl(CreateMarketerStateLoading _value,
      $Res Function(CreateMarketerStateLoading) _then)
      : super(_value, (v) => _then(v as CreateMarketerStateLoading));

  @override
  CreateMarketerStateLoading get _value =>
      super._value as CreateMarketerStateLoading;
}

/// @nodoc

class _$CreateMarketerStateLoading implements CreateMarketerStateLoading {
  const _$CreateMarketerStateLoading();

  @override
  String toString() {
    return 'CreateMarketerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMarketerStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateMarketerResponse> response)
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
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
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
    required TResult Function(_CreateMarketerInital value) initial,
    required TResult Function(CreateMarketerStateLoading value) loading,
    required TResult Function(_CreateMarketerStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateMarketerStateLoading implements CreateMarketerState {
  const factory CreateMarketerStateLoading() = _$CreateMarketerStateLoading;
}

/// @nodoc
abstract class _$CreateMarketerStateLoadedCopyWith<$Res> {
  factory _$CreateMarketerStateLoadedCopyWith(_CreateMarketerStateLoaded value,
          $Res Function(_CreateMarketerStateLoaded) then) =
      __$CreateMarketerStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateMarketerResponse> response});
}

/// @nodoc
class __$CreateMarketerStateLoadedCopyWithImpl<$Res>
    extends _$CreateMarketerStateCopyWithImpl<$Res>
    implements _$CreateMarketerStateLoadedCopyWith<$Res> {
  __$CreateMarketerStateLoadedCopyWithImpl(_CreateMarketerStateLoaded _value,
      $Res Function(_CreateMarketerStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateMarketerStateLoaded));

  @override
  _CreateMarketerStateLoaded get _value =>
      super._value as _CreateMarketerStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateMarketerStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateMarketerResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateMarketerStateLoaded implements _CreateMarketerStateLoaded {
  const _$_CreateMarketerStateLoaded(this.response);

  @override
  final BaseResponse<CreateMarketerResponse> response;

  @override
  String toString() {
    return 'CreateMarketerState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateMarketerStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateMarketerStateLoadedCopyWith<_CreateMarketerStateLoaded>
      get copyWith =>
          __$CreateMarketerStateLoadedCopyWithImpl<_CreateMarketerStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateMarketerResponse> response)
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
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
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
    required TResult Function(_CreateMarketerInital value) initial,
    required TResult Function(CreateMarketerStateLoading value) loading,
    required TResult Function(_CreateMarketerStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateMarketerStateLoaded implements CreateMarketerState {
  const factory _CreateMarketerStateLoaded(
          BaseResponse<CreateMarketerResponse> response) =
      _$_CreateMarketerStateLoaded;

  BaseResponse<CreateMarketerResponse> get response;
  @JsonKey(ignore: true)
  _$CreateMarketerStateLoadedCopyWith<_CreateMarketerStateLoaded>
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
    extends _$CreateMarketerStateCopyWithImpl<$Res>
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
    return 'CreateMarketerState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateMarketerResponse> response)
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
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateMarketerResponse> response)? done,
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
    required TResult Function(_CreateMarketerInital value) initial,
    required TResult Function(CreateMarketerStateLoading value) loading,
    required TResult Function(_CreateMarketerStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMarketerInital value)? initial,
    TResult Function(CreateMarketerStateLoading value)? loading,
    TResult Function(_CreateMarketerStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateMarketerState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
