import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/cubit/settings_cubit.dart';

import 'UI/settings.dart';

// ignore: use_function_type_syntax_for_parameters
void main() {
  runApp(BlocProvider(
    create: (BuildContext context) => SettingsCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings',
      theme: ThemeData(focusColor: Colors.blueGrey),
      home: const SettingsPage(),
    );
  }
}
