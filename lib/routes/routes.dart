import 'package:flutter/material.dart';
import 'package:resume_builder_app/Screens/contact_info/contactInfo.dart';
import 'package:resume_builder_app/Screens/cv_option/cv_option_screen.dart';
import 'package:resume_builder_app/Screens/dashboard/dashboard_screen.dart';
import 'package:resume_builder_app/Screens/education_screen/educationScreen.dart';
import 'package:resume_builder_app/Screens/enter_screen/enterScreen.dart';
import 'package:resume_builder_app/Screens/login_screen/loginScreen.dart';
import 'package:resume_builder_app/Screens/pdf/pdf.dart';
import 'package:resume_builder_app/Screens/settings/settings_screen.dart';
import 'package:resume_builder_app/Screens/splash_screen/splashScreen.dart';
import 'package:resume_builder_app/Screens/template/template_screen.dart';
import 'package:resume_builder_app/Screens/work_history/workHistory.dart';

import '../Screens/skills/skills_screen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashScreen(),
    '/enter': (context) => const EnterScreen(),
    '/login': (context) => const LoginScreen(),
    '/dashboard': (context) => const DashboardScreen(),
    '/setting': (context) => const SettingScreen(),
    '/cvOption': (context) => const CvOptionScreen(),
    '/template': (context) => const TemplateScreen(),
    '/contact': (context) => const ContactInfo(),
    '/workHistory': (context) => const WorkHistory(),
    '/education': (context) => const EducationScreen(),
    '/skills': (context) => const SkillScreen(),
    '/pdf': (context) => const PdfScreen(),
  };
}
