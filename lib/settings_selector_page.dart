import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pass_generator/main.dart';
import 'package:pass_generator/randomizer_page.dart';
import 'package:pass_generator/settings_form.dart';

class SettingsSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  SettingsSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Settings for Generator'),
      ),
      body: SettingsForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => {
          if (!context.read(randomizerProvider).numbers &&
              !context.read(randomizerProvider).symbols &&
              !context.read(randomizerProvider).uppercase &&
              !context.read(randomizerProvider).lowercase)
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RandomizerPage()))
            }
        },
      ),
    );
  }
}
