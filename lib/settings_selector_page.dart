import 'package:flutter/material.dart';
import 'package:pass_generator/randomizer_page.dart';
import 'package:pass_generator/settings_form.dart';

import 'initial_data_settings.dart';

class SettingsSelectorPage extends StatefulWidget {
  SettingsSelectorPage({Key? key}) : super(key: key);

  @override
  _SettingsSelectorPageState createState() => _SettingsSelectorPageState();
}

class _SettingsSelectorPageState extends State<SettingsSelectorPage> {
  final formKey = GlobalKey<FormState>();

  int _length = 8;

  bool _uppercase = true;

  bool _lowercase = true;

  bool _symbols = false;

  bool _numbers = true;

  _SettingsSelectorPageState() {
    this._numbers = InitialDataSettings.numbers;
    this._lowercase = InitialDataSettings.lowercase;
    this._symbols = InitialDataSettings.symbols;
    this._uppercase = InitialDataSettings.uppercase;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Settings for Generator'),
      ),
      body: SettingsForm(
        formKey: formKey,
        intValueSetter: (value) => _length = value,
        uppercaseValueSetter: (value) => {
          InitialDataSettings.uppercase = value,
          setState(() => _uppercase = value)
        },
        lowercaseValueSetter: (value) => {
          InitialDataSettings.lowercase = value,
          setState(() => _lowercase = value)
        },
        symbolsValueSetter: (value) => {
          InitialDataSettings.symbols = value,
          setState(() => _symbols = value)
        },
        numbersValueSetter: (value) => {
          InitialDataSettings.numbers = value,
          setState(() => _numbers = value)
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => {
          if (!_numbers && !_symbols && !_uppercase && !_lowercase)
            {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Wrong configuration popup'),
                  content: const Text('You need to choose one of checkboxes'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              )
            }
          else if (formKey.currentState?.validate() == true)
            {
              formKey.currentState?.save(),
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RandomizerPage(
                      length: _length,
                      uppercase: _uppercase,
                      lowercase: _lowercase,
                      symbols: _symbols,
                      numbers: _numbers)))
            }
        },
      ),
    );
  }
}
