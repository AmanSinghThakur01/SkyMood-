import 'package:flutter/material.dart';
import 'package:skymood/Theme/theme.dart';
import 'package:skymood/View/splash_screen.dart';
import 'package:provider/provider.dart';

import 'View/home_screen.dart';

void main(){
  runApp(ProviderScope(child : const MyApp()));
}

class MyApp extends consumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, widgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: SplashScreen(),
    );
  }
}
