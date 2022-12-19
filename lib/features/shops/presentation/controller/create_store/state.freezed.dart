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
class _$CreateStoreStateTearOff {
  const _$CreateStoreStateTearOff();

  _CreateStoreInital initial() {
    return const _CreateStoreInital();
  }

  CreateStoreStateLoading loading() {
    return const CreateStoreStateLoading();
  }

  _CreateStoreStateLoaded done(BaseResponse<CreateStoreResponse> response) {
    return _CreateStoreStateLoaded(
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
const $CreateStoreState = _$CreateStoreStateTearOff();

/// @nodoc
mixin _$CreateStoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStoreResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateStoreInital value) initial,
    required TResult Function(CreateStoreStateLoading value) loading,
    required TResult Function(_CreateStoreStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStoreStateCopyWith<$Res> {
  factory $CreateStoreStateCopyWith(
          CreateStoreState value, $Res Function(CreateStoreState) then) =
      _$CreateStoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateStoreStateCopyWithImpl<$Res>
    implements $CreateStoreStateCopyWith<$Res> {
  _$CreateStoreStateCopyWithImpl(this._value, this._then);

  final CreateStoreState _value;
  // ignore: unused_field
  final $Res Function(CreateStoreState) _then;
}

/// @nodoc
abstract class _$CreateStoreInitalCopyWith<$Res> {
  factory _$CreateStoreInitalCopyWith(
          _CreateStoreInital value, $Res Function(_CreateStoreInital) then) =
      __$CreateStoreInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateStoreInitalCopyWithImpl<$Res>
    extends _$CreateStoreStateCopyWithImpl<$Res>
    implements _$CreateStoreInitalCopyWith<$Res> {
  __$CreateStoreInitalCopyWithImpl(
      _CreateStoreInital _value, $Res Function(_CreateStoreInital) _then)
      : super(_value, (v) => _then(v as _CreateStoreInital));

  @override
  _CreateStoreInital get _value => super._value as _CreateStoreInital;
}

/// @nodoc

class _$_CreateStoreInital implements _CreateStoreInital {
  const _$_CreateStoreInital();

  @override
  String toString() {
    return 'CreateStoreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateStoreInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStoreResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
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
    required TResult Function(_CreateStoreInital value) initial,
    required TResult Function(CreateStoreStateLoading value) loading,
    required TResult Function(_CreateStoreStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateStoreInital implements CreateStoreState {
  const factory _CreateStoreInital() = _$_CreateStoreInital;
}

/// @nodoc
abstract class $CreateStoreStateLoadingCopyWith<$Res> {
  factory $CreateStoreStateLoadingCopyWith(CreateStoreStateLoading value,
          $Res Function(CreateStoreStateLoading) then) =
      _$CreateStoreStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateStoreStateLoadingCopyWithImpl<$Res>
    extends _$CreateStoreStateCopyWithImpl<$Res>
    implements $CreateStoreStateLoadingCopyWith<$Res> {
  _$CreateStoreStateLoadingCopyWithImpl(CreateStoreStateLoading _value,
      $Res Function(CreateStoreStateLoading) _then)
      : super(_value, (v) => _then(v as CreateStoreStateLoading));

  @override
  CreateStoreStateLoading get _value => super._value as CreateStoreStateLoading;
}

/// @nodoc

class _$CreateStoreStateLoading implements CreateStoreStateLoading {
  const _$CreateStoreStateLoading();

  @override
  String toString() {
    return 'CreateStoreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateStoreStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStoreResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
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
    required TResult Function(_CreateStoreInital value) initial,
    required TResult Function(CreateStoreStateLoading value) loading,
    required TResult Function(_CreateStoreStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateStoreStateLoading implements CreateStoreState {
  const factory CreateStoreStateLoading() = _$CreateStoreStateLoading;
}

/// @nodoc
abstract class _$CreateStoreStateLoadedCopyWith<$Res> {
  factory _$CreateStoreStateLoadedCopyWith(_CreateStoreStateLoaded value,
          $Res Function(_CreateStoreStateLoaded) then) =
      __$CreateStoreStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateStoreResponse> response});
}

/// @nodoc
class __$CreateStoreStateLoadedCopyWithImpl<$Res>
    extends _$CreateStoreStateCopyWithImpl<$Res>
    implements _$CreateStoreStateLoadedCopyWith<$Res> {
  __$CreateStoreStateLoadedCopyWithImpl(_CreateStoreStateLoaded _value,
      $Res Function(_CreateStoreStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateStoreStateLoaded));

  @override
  _CreateStoreStateLoaded get _value => super._value as _CreateStoreStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateStoreStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateStoreResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateStoreStateLoaded implements _CreateStoreStateLoaded {
  const _$_CreateStoreStateLoaded(this.response);

  @override
  final BaseResponse<CreateStoreResponse> response;

  @override
  String toString() {
    return 'CreateStoreState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStoreStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateStoreStateLoadedCopyWith<_CreateStoreStateLoaded> get copyWith =>
      __$CreateStoreStateLoadedCopyWithImpl<_CreateStoreStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStoreResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
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
    required TResult Function(_CreateStoreInital value) initial,
    required TResult Function(CreateStoreStateLoading value) loading,
    required TResult Function(_CreateStoreStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateStoreStateLoaded implements CreateStoreState {
  const factory _CreateStoreStateLoaded(
      BaseResponse<CreateStoreResponse> response) = _$_CreateStoreStateLoaded;

  BaseResponse<CreateStoreResponse> get response;
  @JsonKey(ignore: true)
  _$CreateStoreStateLoadedCopyWith<_CreateStoreStateLoaded> get copyWith =>
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
    extends _$CreateStoreStateCopyWithImpl<$Res>
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
    return 'CreateStoreState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateStoreResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStoreResponse> response)? done,
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
    required TResult Function(_CreateStoreInital value) initial,
    required TResult Function(CreateStoreStateLoading value) loading,
    required TResult Function(_CreateStoreStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStoreInital value)? initial,
    TResult Function(CreateStoreStateLoading value)? loading,
    TResult Function(_CreateStoreStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateStoreState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
