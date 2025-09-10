import 'package:flutter/material.dart';
import 'package:women_safety/home_page.dart';
import 'package:women_safety/login_page.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}
