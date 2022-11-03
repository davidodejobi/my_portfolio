import 'package:flutter/material.dart';

import 'locator.dart';
import 'core/utils/theme.dart';
import 'modules/home/home.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buskeit',
      theme: AppTheme.light(),
      home: const Home(),
    );
  }
}
