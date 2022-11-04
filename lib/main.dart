import 'package:flutter/material.dart';
import 'package:portfolio/modules/Home/home.dart';
import 'package:provider/provider.dart';

import 'locator.dart';
import 'core/utils/theme.dart';
import 'modules/home/view_model/home_provider.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: AppTheme.light(),
        home: const Home(),
      ),
    );
  }
}
