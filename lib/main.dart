import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '이짝저짝',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이짝저짝'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100), // 로고 대체 가능
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('로그인'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
              },
              child: const Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class YuseongClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.02, size.height * 0.02);
    path.lineTo(size.width * 0.45, size.height * 0.02);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.10, size.width * 0.50, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.25, size.width * 0.45, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.35, size.width * 0.40, size.height * 0.40);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.50, size.width * 0.45, size.height * 0.60);
    path.lineTo(size.width * 0.02, size.height * 0.60);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class DaedeokClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.45, size.height * 0.02);
    path.lineTo(size.width * 0.98, size.height * 0.18);
    path.lineTo(size.width * 0.88, size.height * 0.64);
    path.lineTo(size.width * 0.52, size.height * 0.48);
    path.lineTo(size.width * 0.45, size.height * 0.34);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SeoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.02, size.height * 0.30);
    path.lineTo(size.width * 0.45, size.height * 0.34);
    path.lineTo(size.width * 0.53, size.height * 0.48);
    path.lineTo(size.width * 0.45, size.height * 0.70);
    path.lineTo(size.width * 0.02, size.height * 0.62);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JungClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.45, size.height * 0.34);
    path.lineTo(size.width * 0.52, size.height * 0.48);
    path.lineTo(size.width * 0.60, size.height * 0.48);
    path.lineTo(size.width * 0.60, size.height * 0.62);
    path.lineTo(size.width * 0.52, size.height * 0.76);
    path.lineTo(size.width * 0.45, size.height * 0.76);
    path.lineTo(size.width * 0.38, size.height * 0.62);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class DongClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.50, size.height * 0.20);
    path.lineTo(size.width * 0.56, size.height * 0.30);
    path.lineTo(size.width * 0.70, size.height * 0.35);
    path.lineTo(size.width * 0.65, size.height * 0.45);
    path.lineTo(size.width * 0.55, size.height * 0.50);
    path.lineTo(size.width * 0.50, size.height * 0.48);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}