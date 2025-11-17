import 'package:flutter/material.dart';
import 'package:women_safety/bottom_navigation/bottom.dart';


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
          child: Bottom(),
        ),
      ),
    );
  }
}
