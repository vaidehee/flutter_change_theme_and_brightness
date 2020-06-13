import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state_themeNotifier.dart';

class ThemeChangeScreen extends StatefulWidget {
  @override
  _ThemeChangeScreenState createState() => _ThemeChangeScreenState();
}

class _ThemeChangeScreenState extends State<ThemeChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MaterialButton(
          onPressed: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Switch(
                  value: Provider.of<AppThemeNotifier>(context, listen: false)
                      .isDark,
                  onChanged: (boolVal) {
                    Provider.of<AppThemeNotifier>(context, listen: false)
                        .changeTheme(boolVal);
                  },
                ),
                Text(
                  "Hello World",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
