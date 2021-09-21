import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timertime/screens/mainScreen.dart';
import 'noweb_config.dart' if (dart.library.html) 'web_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  webConfigApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))),
      home: mainScreen(),
    );
  }
}
