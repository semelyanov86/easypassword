import 'package:flutter/material.dart';
import 'package:pass_generator/initial_data_settings.dart';

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

class CheckboxSettingFormField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: initialValue,
          onChanged: (bool? value) {
            boolValueSetter(value ?? false);
          },
        ),
        Text(labelText, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

class SettingsForm extends StatelessWidget {
  SettingsForm({
    Key? key,
    required this.formKey,
    required this.intValueSetter,
    required this.lowercaseValueSetter,
    required this.uppercaseValueSetter,
    required this.symbolsValueSetter,
    required this.numbersValueSetter,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  final IntValueSetter intValueSetter;

  final BoolValueSetter lowercaseValueSetter;
  final BoolValueSetter uppercaseValueSetter;
  final BoolValueSetter symbolsValueSetter;
  final BoolValueSetter numbersValueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeTextFormField(
              labelText: 'Length of Password',
              intValueSetter: intValueSetter,
              initialValue: InitialDataSettings.length,
            ),
            SizedBox(height: 12),
            CheckboxSettingFormField(
              labelText: 'Lowercase Letters',
              boolValueSetter: lowercaseValueSetter,
              initialValue: InitialDataSettings.lowercase,
            ),
            CheckboxSettingFormField(
                labelText: 'Uppercase Letters',
                boolValueSetter: uppercaseValueSetter,
                initialValue: InitialDataSettings.uppercase),
            CheckboxSettingFormField(
                labelText: 'Symbols',
                boolValueSetter: symbolsValueSetter,
                initialValue: InitialDataSettings.symbols),
            CheckboxSettingFormField(
                labelText: 'Numbers',
                boolValueSetter: numbersValueSetter,
                initialValue: InitialDataSettings.numbers),
          ],
        ),
      ),
    );
  }
}
