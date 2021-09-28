// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'randomizer_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RandomizerStateTearOff {
  const _$RandomizerStateTearOff();

  _RandomizerState call(
      {int length = 8,
      bool uppercase = true,
      bool lowercase = true,
      bool numbers = true,
      bool symbols = false,
      String? generatedPassword}) {
    return _RandomizerState(
      length: length,
      uppercase: uppercase,
      lowercase: lowercase,
      numbers: numbers,
      symbols: symbols,
      generatedPassword: generatedPassword,
    );
  }
}

/// @nodoc
const $RandomizerState = _$RandomizerStateTearOff();

/// @nodoc
mixin _$RandomizerState {
  int get length => throw _privateConstructorUsedError;
  bool get uppercase => throw _privateConstructorUsedError;
  bool get lowercase => throw _privateConstructorUsedError;
  bool get numbers => throw _privateConstructorUsedError;
  bool get symbols => throw _privateConstructorUsedError;
  String? get generatedPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomizerStateCopyWith<RandomizerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomizerStateCopyWith<$Res> {
  factory $RandomizerStateCopyWith(
          RandomizerState value, $Res Function(RandomizerState) then) =
      _$RandomizerStateCopyWithImpl<$Res>;
  $Res call(
      {int length,
      bool uppercase,
      bool lowercase,
      bool numbers,
      bool symbols,
      String? generatedPassword});
}

/// @nodoc
class _$RandomizerStateCopyWithImpl<$Res>
    implements $RandomizerStateCopyWith<$Res> {
  _$RandomizerStateCopyWithImpl(this._value, this._then);

  final RandomizerState _value;
  // ignore: unused_field
  final $Res Function(RandomizerState) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? uppercase = freezed,
    Object? lowercase = freezed,
    Object? numbers = freezed,
    Object? symbols = freezed,
    Object? generatedPassword = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      uppercase: uppercase == freezed
          ? _value.uppercase
          : uppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      lowercase: lowercase == freezed
          ? _value.lowercase
          : lowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      numbers: numbers == freezed
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as bool,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedPassword: generatedPassword == freezed
          ? _value.generatedPassword
          : generatedPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RandomizerStateCopyWith<$Res>
    implements $RandomizerStateCopyWith<$Res> {
  factory _$RandomizerStateCopyWith(
          _RandomizerState value, $Res Function(_RandomizerState) then) =
      __$RandomizerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int length,
      bool uppercase,
      bool lowercase,
      bool numbers,
      bool symbols,
      String? generatedPassword});
}

/// @nodoc
class __$RandomizerStateCopyWithImpl<$Res>
    extends _$RandomizerStateCopyWithImpl<$Res>
    implements _$RandomizerStateCopyWith<$Res> {
  __$RandomizerStateCopyWithImpl(
      _RandomizerState _value, $Res Function(_RandomizerState) _then)
      : super(_value, (v) => _then(v as _RandomizerState));

  @override
  _RandomizerState get _value => super._value as _RandomizerState;

  @override
  $Res call({
    Object? length = freezed,
    Object? uppercase = freezed,
    Object? lowercase = freezed,
    Object? numbers = freezed,
    Object? symbols = freezed,
    Object? generatedPassword = freezed,
  }) {
    return _then(_RandomizerState(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      uppercase: uppercase == freezed
          ? _value.uppercase
          : uppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      lowercase: lowercase == freezed
          ? _value.lowercase
          : lowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      numbers: numbers == freezed
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as bool,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedPassword: generatedPassword == freezed
          ? _value.generatedPassword
          : generatedPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RandomizerState extends _RandomizerState with DiagnosticableTreeMixin {
  const _$_RandomizerState(
      {this.length = 8,
      this.uppercase = true,
      this.lowercase = true,
      this.numbers = true,
      this.symbols = false,
      this.generatedPassword})
      : super._();

  @JsonKey(defaultValue: 8)
  @override
  final int length;
  @JsonKey(defaultValue: true)
  @override
  final bool uppercase;
  @JsonKey(defaultValue: true)
  @override
  final bool lowercase;
  @JsonKey(defaultValue: true)
  @override
  final bool numbers;
  @JsonKey(defaultValue: false)
  @override
  final bool symbols;
  @override
  final String? generatedPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RandomizerState(length: $length, uppercase: $uppercase, lowercase: $lowercase, numbers: $numbers, symbols: $symbols, generatedPassword: $generatedPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RandomizerState'))
      ..add(DiagnosticsProperty('length', length))
      ..add(DiagnosticsProperty('uppercase', uppercase))
      ..add(DiagnosticsProperty('lowercase', lowercase))
      ..add(DiagnosticsProperty('numbers', numbers))
      ..add(DiagnosticsProperty('symbols', symbols))
      ..add(DiagnosticsProperty('generatedPassword', generatedPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RandomizerState &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.uppercase, uppercase) ||
                const DeepCollectionEquality()
                    .equals(other.uppercase, uppercase)) &&
            (identical(other.lowercase, lowercase) ||
                const DeepCollectionEquality()
                    .equals(other.lowercase, lowercase)) &&
            (identical(other.numbers, numbers) ||
                const DeepCollectionEquality()
                    .equals(other.numbers, numbers)) &&
            (identical(other.symbols, symbols) ||
                const DeepCollectionEquality()
                    .equals(other.symbols, symbols)) &&
            (identical(other.generatedPassword, generatedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.generatedPassword, generatedPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(uppercase) ^
      const DeepCollectionEquality().hash(lowercase) ^
      const DeepCollectionEquality().hash(numbers) ^
      const DeepCollectionEquality().hash(symbols) ^
      const DeepCollectionEquality().hash(generatedPassword);

  @JsonKey(ignore: true)
  @override
  _$RandomizerStateCopyWith<_RandomizerState> get copyWith =>
      __$RandomizerStateCopyWithImpl<_RandomizerState>(this, _$identity);
}

abstract class _RandomizerState extends RandomizerState {
  const factory _RandomizerState(
      {int length,
      bool uppercase,
      bool lowercase,
      bool numbers,
      bool symbols,
      String? generatedPassword}) = _$_RandomizerState;
  const _RandomizerState._() : super._();

  @override
  int get length => throw _privateConstructorUsedError;
  @override
  bool get uppercase => throw _privateConstructorUsedError;
  @override
  bool get lowercase => throw _privateConstructorUsedError;
  @override
  bool get numbers => throw _privateConstructorUsedError;
  @override
  bool get symbols => throw _privateConstructorUsedError;
  @override
  String? get generatedPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RandomizerStateCopyWith<_RandomizerState> get copyWith =>
      throw _privateConstructorUsedError;
}
