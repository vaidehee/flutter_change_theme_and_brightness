import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_theme_change/app_state_themeNotifier.dart';
import 'app_theme_change/themeChangeScreen.dart';


void main() {
  runApp(ChangeNotifierProvider<AppThemeNotifier>(
    create: (context) => AppThemeNotifier(),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  AppThemeNotifier appThemeNotifier=new AppThemeNotifier();
  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeNotifier>(
      builder: (context,appState,child)
      {
        return
          MaterialApp(
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Theme change',
              themeMode: appState.isDark ? ThemeMode.dark : ThemeMode.light,
              home:ThemeChangeScreen()
          );
      },
    );



  }
}


