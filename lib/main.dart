import 'package:flutter/material.dart';
import 'package:oct_8_sqf/controller/home_screen_controller.dart';
import 'package:oct_8_sqf/view/home_screen/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HomeScreenController.intidb();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
