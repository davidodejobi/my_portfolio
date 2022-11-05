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
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
        ChangeNotifierProvider<AppTheme>(create: (_) => AppTheme()),
      ],
      child: Consumer<AppTheme>(
        builder: (context, theme, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio',
            darkTheme: AppTheme.dark(),
            theme: AppTheme.light(),
            themeMode: theme.currentTheme,
            home: const Home(),
          );
        },
      ),
    );
  }
}
