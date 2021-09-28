import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pass_generator/initial_data_settings.dart';
import 'package:pass_generator/main.dart';

typedef IntValueSetter = void Function(int value);

typedef BoolValueSetter = void Function(bool value);

class RangeTextFormField extends StatelessWidget {
  RangeTextFormField(
      {Key? key,
      required this.labelText,
      required this.intValueSetter,
      required this.initialValue})
      : super(key: key);

  final String labelText;

  final int initialValue;

  final IntValueSetter intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: labelText),
      initialValue: initialValue.toString(),
      keyboardType:
          TextInputType.numberWithOptions(decimal: false, signed: true),
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '8')),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Here must be a valid number';
        }
        if (int.parse(value) < 2) {
          return 'Password length should be more then 2';
        }
        return null;
      },
    );
  }
}

class CheckboxSettingFormField extends StatefulWidget {
  const CheckboxSettingFormField(
      {Key? key,
      required this.labelText,
      required this.boolValueSetter,
      required this.initialValue})
      : super(key: key);

  final String labelText;

  final bool initialValue;

  final BoolValueSetter boolValueSetter;

  @override
  State<StatefulWidget> createState() => _CheckboxSettingFormField();
}

class _CheckboxSettingFormField extends State<CheckboxSettingFormField> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? value) {
            widget.boolValueSetter(value ?? false);

            setState(() {
              _isChecked = value!;
            });

            // context.refresh(randomizerProvider);
            print(context.read(randomizerProvider).symbols);
          },
        ),
        Text(widget.labelText, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

class SettingsForm extends ConsumerWidget {
  SettingsForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeTextFormField(
              labelText: 'Length of Password',
              intValueSetter: (value) =>
                  context.read(randomizerProvider).length = value,
              initialValue: context.read(randomizerProvider).length,
            ),
            SizedBox(height: 12),
            CheckboxSettingFormField(
              labelText: 'Lowercase Letters',
              boolValueSetter: (value) => {
                ref(randomizerProvider).lowercase = value,
                InitialDataSettings.lowercase = value
              },
              initialValue: InitialDataSettings.lowercase,
            ),
            CheckboxSettingFormField(
                labelText: 'Uppercase Letters',
                boolValueSetter: (value) => {
                      ref(randomizerProvider).uppercase = value,
                      InitialDataSettings.uppercase = value
                    },
                initialValue: ref(randomizerProvider).uppercase),
/*            CheckboxListTile(
              value: ref(randomizerProvider).symbols,
              onChanged: (value) =>
                  {ref(randomizerProvider).symbols = value ?? false},
              title: Text('Symbols'),
            ),*/
            CheckboxSettingFormField(
                labelText: 'Symbols',
                boolValueSetter: (value) => {
                      ref(randomizerProvider).symbols = value,
                      context.read(randomizerProvider).symbols = value,
                      InitialDataSettings.symbols = value,
                    },
                initialValue: ref(randomizerProvider).symbols),
            CheckboxSettingFormField(
                labelText: 'Numbers',
                boolValueSetter: (value) => {
                      ref(randomizerProvider).numbers = value,
                      context.read(randomizerProvider).numbers = value,
                      InitialDataSettings.numbers = value
                    },
                initialValue: InitialDataSettings.numbers),
          ],
        ),
      ),
    );
  }
}
