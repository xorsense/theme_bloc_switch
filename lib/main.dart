import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_switch/settings/preferences.dart';

import 'blocs/theme_bloc.dart';
import 'blocs/theme_state.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, ThemeState themeState) {
          Preferences preferences = Preferences();
          preferences.init();

          return MaterialApp(
            title: 'Flutter Bloc Demo',
            debugShowCheckedModeBanner: false,
            theme: themeState.themeData,
            home: Scaffold(
              appBar: AppBar(title: const Text("Theme switcher")),
            ),
          );
        },
      ),
    );
  }
}
