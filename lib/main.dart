import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/program_list_screen.dart';
import 'screens/program_detail_screen.dart';
import 'screens/registration_form_screen.dart';
import 'utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuangBantu',
      theme: ThemeData(
        primaryColor: darkBlue,
        scaffoldBackgroundColor: lightBlue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/programList': (context) => ProgramListScreen(),
        '/programDetail': (context) => ProgramDetailScreen(),
        '/registrationForm': (context) => RegistrationFormScreen(),
      },
    );
  }
}