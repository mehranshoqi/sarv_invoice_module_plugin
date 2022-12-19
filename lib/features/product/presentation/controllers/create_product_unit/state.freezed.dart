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
class _$CreateProductUnitStateTearOff {
  const _$CreateProductUnitStateTearOff();

  _CreateProductInital initial() {
    return const _CreateProductInital();
  }

  CreateProductUnitStateLoading loading() {
    return const CreateProductUnitStateLoading();
  }

  _CreateProductUnitStateLoaded done(
      BaseResponse<CreateUnitResponse> response) {
    return _CreateProductUnitStateLoaded(
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
const $CreateProductUnitState = _$CreateProductUnitStateTearOff();

/// @nodoc
mixin _$CreateProductUnitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateUnitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(CreateProductUnitStateLoading value) loading,
    required TResult Function(_CreateProductUnitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductUnitStateCopyWith<$Res> {
  factory $CreateProductUnitStateCopyWith(CreateProductUnitState value,
          $Res Function(CreateProductUnitState) then) =
      _$CreateProductUnitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductUnitStateCopyWithImpl<$Res>
    implements $CreateProductUnitStateCopyWith<$Res> {
  _$CreateProductUnitStateCopyWithImpl(this._value, this._then);

  final CreateProductUnitState _value;
  // ignore: unused_field
  final $Res Function(CreateProductUnitState) _then;
}

/// @nodoc
abstract class _$CreateProductInitalCopyWith<$Res> {
  factory _$CreateProductInitalCopyWith(_CreateProductInital value,
          $Res Function(_CreateProductInital) then) =
      __$CreateProductInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductInitalCopyWithImpl<$Res>
    extends _$CreateProductUnitStateCopyWithImpl<$Res>
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
    return 'CreateProductUnitState.initial()';
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
    required TResult Function(BaseResponse<CreateUnitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
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
    required TResult Function(CreateProductUnitStateLoading value) loading,
    required TResult Function(_CreateProductUnitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductInital implements CreateProductUnitState {
  const factory _CreateProductInital() = _$_CreateProductInital;
}

/// @nodoc
abstract class $CreateProductUnitStateLoadingCopyWith<$Res> {
  factory $CreateProductUnitStateLoadingCopyWith(
          CreateProductUnitStateLoading value,
          $Res Function(CreateProductUnitStateLoading) then) =
      _$CreateProductUnitStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductUnitStateLoadingCopyWithImpl<$Res>
    extends _$CreateProductUnitStateCopyWithImpl<$Res>
    implements $CreateProductUnitStateLoadingCopyWith<$Res> {
  _$CreateProductUnitStateLoadingCopyWithImpl(
      CreateProductUnitStateLoading _value,
      $Res Function(CreateProductUnitStateLoading) _then)
      : super(_value, (v) => _then(v as CreateProductUnitStateLoading));

  @override
  CreateProductUnitStateLoading get _value =>
      super._value as CreateProductUnitStateLoading;
}

/// @nodoc

class _$CreateProductUnitStateLoading implements CreateProductUnitStateLoading {
  const _$CreateProductUnitStateLoading();

  @override
  String toString() {
    return 'CreateProductUnitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductUnitStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateUnitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
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
    required TResult Function(CreateProductUnitStateLoading value) loading,
    required TResult Function(_CreateProductUnitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateProductUnitStateLoading implements CreateProductUnitState {
  const factory CreateProductUnitStateLoading() =
      _$CreateProductUnitStateLoading;
}

/// @nodoc
abstract class _$CreateProductUnitStateLoadedCopyWith<$Res> {
  factory _$CreateProductUnitStateLoadedCopyWith(
          _CreateProductUnitStateLoaded value,
          $Res Function(_CreateProductUnitStateLoaded) then) =
      __$CreateProductUnitStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateUnitResponse> response});
}

/// @nodoc
class __$CreateProductUnitStateLoadedCopyWithImpl<$Res>
    extends _$CreateProductUnitStateCopyWithImpl<$Res>
    implements _$CreateProductUnitStateLoadedCopyWith<$Res> {
  __$CreateProductUnitStateLoadedCopyWithImpl(
      _CreateProductUnitStateLoaded _value,
      $Res Function(_CreateProductUnitStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateProductUnitStateLoaded));

  @override
  _CreateProductUnitStateLoaded get _value =>
      super._value as _CreateProductUnitStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateProductUnitStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateUnitResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateProductUnitStateLoaded implements _CreateProductUnitStateLoaded {
  const _$_CreateProductUnitStateLoaded(this.response);

  @override
  final BaseResponse<CreateUnitResponse> response;

  @override
  String toString() {
    return 'CreateProductUnitState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductUnitStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateProductUnitStateLoadedCopyWith<_CreateProductUnitStateLoaded>
      get copyWith => __$CreateProductUnitStateLoadedCopyWithImpl<
          _CreateProductUnitStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateUnitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
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
    required TResult Function(CreateProductUnitStateLoading value) loading,
    required TResult Function(_CreateProductUnitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateProductUnitStateLoaded implements CreateProductUnitState {
  const factory _CreateProductUnitStateLoaded(
          BaseResponse<CreateUnitResponse> response) =
      _$_CreateProductUnitStateLoaded;

  BaseResponse<CreateUnitResponse> get response;
  @JsonKey(ignore: true)
  _$CreateProductUnitStateLoadedCopyWith<_CreateProductUnitStateLoaded>
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
    extends _$CreateProductUnitStateCopyWithImpl<$Res>
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
    return 'CreateProductUnitState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateUnitResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateUnitResponse> response)? done,
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
    required TResult Function(CreateProductUnitStateLoading value) loading,
    required TResult Function(_CreateProductUnitStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductUnitStateLoading value)? loading,
    TResult Function(_CreateProductUnitStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateProductUnitState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
