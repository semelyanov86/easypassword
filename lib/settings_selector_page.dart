import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pass_generator/randomizer_page.dart';
import 'package:pass_generator/settings_form.dart';

import 'initial_data_settings.dart';

class SettingsSelectorPage extends HookWidget {
  final formKey = GlobalKey<FormState>();

  SettingsSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = useState<int>(8);

    final uppercase = useState<bool>(true);

    final lowercase = useState<bool>(true);

    final symbols = useState<bool>(false);

    final numbers = useState<bool>(true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Settings for Generator'),
      ),
      body: SettingsForm(
        formKey: formKey,
        intValueSetter: (value) => length.value = value,
        uppercaseValueSetter: (value) =>
            {InitialDataSettings.uppercase = value, uppercase.value = value},
        lowercaseValueSetter: (value) =>
            {InitialDataSettings.lowercase = value, lowercase.value = value},
        symbolsValueSetter: (value) =>
            {InitialDataSettings.symbols = value, symbols.value = value},
        numbersValueSetter: (value) =>
            {InitialDataSettings.numbers = value, numbers.value = value},
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => {
          if (!numbers.value &&
              !symbols.value &&
              !uppercase.value &&
              !lowercase.value)
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
                      length: length.value,
                      uppercase: uppercase.value,
                      lowercase: lowercase.value,
                      symbols: symbols.value,
                      numbers: numbers.value)))
            }
        },
      ),
    );
  }
}
