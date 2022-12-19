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
class _$CreateProductCategoryStateTearOff {
  const _$CreateProductCategoryStateTearOff();

  _CreateProductCategoryInital initial() {
    return const _CreateProductCategoryInital();
  }

  CreateProductCategoryStateLoading loading() {
    return const CreateProductCategoryStateLoading();
  }

  _CreateProductCategoryStateLoaded done(
      BaseResponse<CreateProductCategoryResponse> response) {
    return _CreateProductCategoryStateLoaded(
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
const $CreateProductCategoryState = _$CreateProductCategoryStateTearOff();

/// @nodoc
mixin _$CreateProductCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateProductCategoryResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductCategoryInital value) initial,
    required TResult Function(CreateProductCategoryStateLoading value) loading,
    required TResult Function(_CreateProductCategoryStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductCategoryStateCopyWith<$Res> {
  factory $CreateProductCategoryStateCopyWith(CreateProductCategoryState value,
          $Res Function(CreateProductCategoryState) then) =
      _$CreateProductCategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductCategoryStateCopyWithImpl<$Res>
    implements $CreateProductCategoryStateCopyWith<$Res> {
  _$CreateProductCategoryStateCopyWithImpl(this._value, this._then);

  final CreateProductCategoryState _value;
  // ignore: unused_field
  final $Res Function(CreateProductCategoryState) _then;
}

/// @nodoc
abstract class _$CreateProductCategoryInitalCopyWith<$Res> {
  factory _$CreateProductCategoryInitalCopyWith(
          _CreateProductCategoryInital value,
          $Res Function(_CreateProductCategoryInital) then) =
      __$CreateProductCategoryInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductCategoryInitalCopyWithImpl<$Res>
    extends _$CreateProductCategoryStateCopyWithImpl<$Res>
    implements _$CreateProductCategoryInitalCopyWith<$Res> {
  __$CreateProductCategoryInitalCopyWithImpl(
      _CreateProductCategoryInital _value,
      $Res Function(_CreateProductCategoryInital) _then)
      : super(_value, (v) => _then(v as _CreateProductCategoryInital));

  @override
  _CreateProductCategoryInital get _value =>
      super._value as _CreateProductCategoryInital;
}

/// @nodoc

class _$_CreateProductCategoryInital implements _CreateProductCategoryInital {
  const _$_CreateProductCategoryInital();

  @override
  String toString() {
    return 'CreateProductCategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductCategoryInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateProductCategoryResponse> response)
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
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
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
    required TResult Function(_CreateProductCategoryInital value) initial,
    required TResult Function(CreateProductCategoryStateLoading value) loading,
    required TResult Function(_CreateProductCategoryStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductCategoryInital
    implements CreateProductCategoryState {
  const factory _CreateProductCategoryInital() = _$_CreateProductCategoryInital;
}

/// @nodoc
abstract class $CreateProductCategoryStateLoadingCopyWith<$Res> {
  factory $CreateProductCategoryStateLoadingCopyWith(
          CreateProductCategoryStateLoading value,
          $Res Function(CreateProductCategoryStateLoading) then) =
      _$CreateProductCategoryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductCategoryStateLoadingCopyWithImpl<$Res>
    extends _$CreateProductCategoryStateCopyWithImpl<$Res>
    implements $CreateProductCategoryStateLoadingCopyWith<$Res> {
  _$CreateProductCategoryStateLoadingCopyWithImpl(
      CreateProductCategoryStateLoading _value,
      $Res Function(CreateProductCategoryStateLoading) _then)
      : super(_value, (v) => _then(v as CreateProductCategoryStateLoading));

  @override
  CreateProductCategoryStateLoading get _value =>
      super._value as CreateProductCategoryStateLoading;
}

/// @nodoc

class _$CreateProductCategoryStateLoading
    implements CreateProductCategoryStateLoading {
  const _$CreateProductCategoryStateLoading();

  @override
  String toString() {
    return 'CreateProductCategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductCategoryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateProductCategoryResponse> response)
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
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
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
    required TResult Function(_CreateProductCategoryInital value) initial,
    required TResult Function(CreateProductCategoryStateLoading value) loading,
    required TResult Function(_CreateProductCategoryStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateProductCategoryStateLoading
    implements CreateProductCategoryState {
  const factory CreateProductCategoryStateLoading() =
      _$CreateProductCategoryStateLoading;
}

/// @nodoc
abstract class _$CreateProductCategoryStateLoadedCopyWith<$Res> {
  factory _$CreateProductCategoryStateLoadedCopyWith(
          _CreateProductCategoryStateLoaded value,
          $Res Function(_CreateProductCategoryStateLoaded) then) =
      __$CreateProductCategoryStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateProductCategoryResponse> response});
}

/// @nodoc
class __$CreateProductCategoryStateLoadedCopyWithImpl<$Res>
    extends _$CreateProductCategoryStateCopyWithImpl<$Res>
    implements _$CreateProductCategoryStateLoadedCopyWith<$Res> {
  __$CreateProductCategoryStateLoadedCopyWithImpl(
      _CreateProductCategoryStateLoaded _value,
      $Res Function(_CreateProductCategoryStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateProductCategoryStateLoaded));

  @override
  _CreateProductCategoryStateLoaded get _value =>
      super._value as _CreateProductCategoryStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateProductCategoryStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateProductCategoryResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateProductCategoryStateLoaded
    implements _CreateProductCategoryStateLoaded {
  const _$_CreateProductCategoryStateLoaded(this.response);

  @override
  final BaseResponse<CreateProductCategoryResponse> response;

  @override
  String toString() {
    return 'CreateProductCategoryState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductCategoryStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateProductCategoryStateLoadedCopyWith<_CreateProductCategoryStateLoaded>
      get copyWith => __$CreateProductCategoryStateLoadedCopyWithImpl<
          _CreateProductCategoryStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateProductCategoryResponse> response)
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
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
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
    required TResult Function(_CreateProductCategoryInital value) initial,
    required TResult Function(CreateProductCategoryStateLoading value) loading,
    required TResult Function(_CreateProductCategoryStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateProductCategoryStateLoaded
    implements CreateProductCategoryState {
  const factory _CreateProductCategoryStateLoaded(
          BaseResponse<CreateProductCategoryResponse> response) =
      _$_CreateProductCategoryStateLoaded;

  BaseResponse<CreateProductCategoryResponse> get response;
  @JsonKey(ignore: true)
  _$CreateProductCategoryStateLoadedCopyWith<_CreateProductCategoryStateLoaded>
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
    extends _$CreateProductCategoryStateCopyWithImpl<$Res>
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
    return 'CreateProductCategoryState.error(failure: $failure)';
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
            BaseResponse<CreateProductCategoryResponse> response)
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
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductCategoryResponse> response)?
        done,
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
    required TResult Function(_CreateProductCategoryInital value) initial,
    required TResult Function(CreateProductCategoryStateLoading value) loading,
    required TResult Function(_CreateProductCategoryStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductCategoryInital value)? initial,
    TResult Function(CreateProductCategoryStateLoading value)? loading,
    TResult Function(_CreateProductCategoryStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError
    implements CreateProductCategoryState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
