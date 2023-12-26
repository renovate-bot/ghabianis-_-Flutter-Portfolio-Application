import 'package:flutter/material.dart';
import 'package:mycv/Education/education.dart';
import 'package:mycv/Home/home.dart';
import 'package:mycv/ProfessionalExperience/professional_experience.dart';
import 'package:mycv/Certifications/certifications.dart';
import 'package:mycv/Skills/skills.dart';
import 'package:mycv/SplashScreen/splash_screen.dart';
import 'package:mycv/helpers/appScaffold.dart';
import 'package:mycv/helpers/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// This widget is the root of your application.
class _MyAppState extends State<MyApp> {
  // This boolean will be used to toggle between light and dark mode
  bool _isDarkMode = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghabi Anis CV',
      routes: {
        'splashScreen': (context) => const SplashScreenView(),
        'Certifications': (context) => const CertificationsPage(),
        'professional Experience': (context) =>
            const ProfessionalExperiencePage(),
        'education': (context) => const EducationPage(),
        'skills': (context) => SkillsPage(),
      },
      theme: AppScaffold.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: 'splashScreen',
      home: MyHomePage(title: 'Home Page'),
    );
  }
}
