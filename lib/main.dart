import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pass_generator/randomizer_state_notifier.dart';
import 'package:pass_generator/settings_selector_page.dart';

void main() {
  runApp(AppWidget());
}

final randomizerProvider =
    StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
        (ref) => RandomizerStateNotifier());

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
      title: 'Password Generator',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: SettingsSelectorPage(),
    ));
  }
}
