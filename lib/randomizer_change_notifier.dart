import 'package:flutter/foundation.dart';
import 'package:random_password_generator/random_password_generator.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final _passwordGenerator = RandomPasswordGenerator();

  String? _generatedPassword;
  String? get generatedPassword => _generatedPassword;

  int length = 8;

  bool uppercase = true;
  bool lowercase = true;
  bool numbers = true;
  bool symbols = false;

  void generateRandomPassword() {
    print(symbols);
    _generatedPassword = _passwordGenerator.randomPassword(
        passwordLength: length.toDouble(),
        letters: lowercase,
        uppercase: uppercase,
        numbers: numbers,
        specialChar: symbols);
    notifyListeners();
  }
}
