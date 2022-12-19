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
class _$CreateProductStateTearOff {
  const _$CreateProductStateTearOff();

  _CreateProductInital initial() {
    return const _CreateProductInital();
  }

  CreateProductStateLoading loading() {
    return const CreateProductStateLoading();
  }

  _CreateProductStateLoaded done(BaseResponse<CreateProductResponse> response) {
    return _CreateProductStateLoaded(
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
const $CreateProductState = _$CreateProductStateTearOff();

/// @nodoc
mixin _$CreateProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductInital value) initial,
    required TResult Function(CreateProductStateLoading value) loading,
    required TResult Function(_CreateProductStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductStateCopyWith<$Res> {
  factory $CreateProductStateCopyWith(
          CreateProductState value, $Res Function(CreateProductState) then) =
      _$CreateProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductStateCopyWithImpl<$Res>
    implements $CreateProductStateCopyWith<$Res> {
  _$CreateProductStateCopyWithImpl(this._value, this._then);

  final CreateProductState _value;
  // ignore: unused_field
  final $Res Function(CreateProductState) _then;
}

/// @nodoc
abstract class _$CreateProductInitalCopyWith<$Res> {
  factory _$CreateProductInitalCopyWith(_CreateProductInital value,
          $Res Function(_CreateProductInital) then) =
      __$CreateProductInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductInitalCopyWithImpl<$Res>
    extends _$CreateProductStateCopyWithImpl<$Res>
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
    return 'CreateProductState.initial()';
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
    required TResult Function(BaseResponse<CreateProductResponse> response)
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
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
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
    required TResult Function(CreateProductStateLoading value) loading,
    required TResult Function(_CreateProductStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductInital implements CreateProductState {
  const factory _CreateProductInital() = _$_CreateProductInital;
}

/// @nodoc
abstract class $CreateProductStateLoadingCopyWith<$Res> {
  factory $CreateProductStateLoadingCopyWith(CreateProductStateLoading value,
          $Res Function(CreateProductStateLoading) then) =
      _$CreateProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductStateLoadingCopyWithImpl<$Res>
    extends _$CreateProductStateCopyWithImpl<$Res>
    implements $CreateProductStateLoadingCopyWith<$Res> {
  _$CreateProductStateLoadingCopyWithImpl(CreateProductStateLoading _value,
      $Res Function(CreateProductStateLoading) _then)
      : super(_value, (v) => _then(v as CreateProductStateLoading));

  @override
  CreateProductStateLoading get _value =>
      super._value as CreateProductStateLoading;
}

/// @nodoc

class _$CreateProductStateLoading implements CreateProductStateLoading {
  const _$CreateProductStateLoading();

  @override
  String toString() {
    return 'CreateProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductResponse> response)
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
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
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
    required TResult Function(CreateProductStateLoading value) loading,
    required TResult Function(_CreateProductStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateProductStateLoading implements CreateProductState {
  const factory CreateProductStateLoading() = _$CreateProductStateLoading;
}

/// @nodoc
abstract class _$CreateProductStateLoadedCopyWith<$Res> {
  factory _$CreateProductStateLoadedCopyWith(_CreateProductStateLoaded value,
          $Res Function(_CreateProductStateLoaded) then) =
      __$CreateProductStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateProductResponse> response});
}

/// @nodoc
class __$CreateProductStateLoadedCopyWithImpl<$Res>
    extends _$CreateProductStateCopyWithImpl<$Res>
    implements _$CreateProductStateLoadedCopyWith<$Res> {
  __$CreateProductStateLoadedCopyWithImpl(_CreateProductStateLoaded _value,
      $Res Function(_CreateProductStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateProductStateLoaded));

  @override
  _CreateProductStateLoaded get _value =>
      super._value as _CreateProductStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateProductStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateProductResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateProductStateLoaded implements _CreateProductStateLoaded {
  const _$_CreateProductStateLoaded(this.response);

  @override
  final BaseResponse<CreateProductResponse> response;

  @override
  String toString() {
    return 'CreateProductState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateProductStateLoadedCopyWith<_CreateProductStateLoaded> get copyWith =>
      __$CreateProductStateLoadedCopyWithImpl<_CreateProductStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductResponse> response)
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
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
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
    required TResult Function(CreateProductStateLoading value) loading,
    required TResult Function(_CreateProductStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateProductStateLoaded implements CreateProductState {
  const factory _CreateProductStateLoaded(
          BaseResponse<CreateProductResponse> response) =
      _$_CreateProductStateLoaded;

  BaseResponse<CreateProductResponse> get response;
  @JsonKey(ignore: true)
  _$CreateProductStateLoadedCopyWith<_CreateProductStateLoaded> get copyWith =>
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
    extends _$CreateProductStateCopyWithImpl<$Res>
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
    return 'CreateProductState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateProductResponse> response)
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
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductResponse> response)? done,
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
    required TResult Function(CreateProductStateLoading value) loading,
    required TResult Function(_CreateProductStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductInital value)? initial,
    TResult Function(CreateProductStateLoading value)? loading,
    TResult Function(_CreateProductStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateProductState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
