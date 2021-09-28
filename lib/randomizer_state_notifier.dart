import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_password_generator/random_password_generator.dart';
import 'package:riverpod/riverpod.dart';

part 'randomizer_state_notifier.freezed.dart';

@freezed
class RandomizerState with _$RandomizerState {
  const RandomizerState._();
  const factory RandomizerState({
    @Default(8) int length,
    @Default(true) bool uppercase,
    @Default(true) bool lowercase,
    @Default(true) bool numbers,
    @Default(false) bool symbols,
    String? generatedPassword,
  }) = _RandomizerState;
}

class RandomizerStateNotifier extends StateNotifier<RandomizerState> {
  RandomizerStateNotifier() : super(RandomizerState());

  final _passwordGenerator = RandomPasswordGenerator();

  void generateRandomPassword() {
    state = state.copyWith(
        generatedPassword: _passwordGenerator.randomPassword(
            passwordLength: state.length.toDouble(),
            letters: state.lowercase,
            uppercase: state.uppercase,
            numbers: state.numbers,
            specialChar: state.symbols));
  }

  void setLength(int value) {
    state = state.copyWith(length: value);
  }

  void setLowercase(bool value) {
    state = state.copyWith(lowercase: value);
  }

  void setUppercase(bool value) {
    state = state.copyWith(uppercase: value);
  }

  void setNumbers(bool value) {
    state = state.copyWith(numbers: value);
  }

  void setSymbols(bool value) {
    state = state.copyWith(symbols: value);
  }
}
