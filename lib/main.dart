import 'package:firebase_core/firebase_core.dart';
import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'main_map.dart';
import 'pin_map.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '이짝저짝',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/main_map': (context) => const MainMapPage(),
        '/pin_map': (context) => const PinMapPage(),
      },
    );
  }
}
