import 'package:cross_native/Screens/CreateProfile.dart';
import 'package:cross_native/Screens/Home.dart';
import 'package:cross_native/Screens/Login.dart';
import 'package:cross_native/Screens/otp.dart';
import 'package:cross_native/Utlis/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Screens/Welcome.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return WidgetsApp(
      home: const SafeArea(child:Welcome()),
      color: "#FFFFFF".toColor(),
      pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
        return MaterialPageRoute(builder: builder, settings: settings);
      },
      textStyle: const TextStyle(),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/welcome': (BuildContext context) => const Welcome(),
        '/login': (BuildContext context) => const Login(),
        '/createProfile': (BuildContext context) => const CreateProfile(),
        '/otp': (BuildContext context) => const OTP(),
        '/home': (BuildContext context) => const Home(),
      },
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
    );

  }
}