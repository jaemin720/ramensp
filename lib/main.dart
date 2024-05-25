import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daejeon Map'),
        ),
        body: Center(
          child: Stack(
            children: [
              ClipPath(
                clipper: YuseongClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://www.wikihow.com/images_en/thumb/2/2f/769114-9.jpg/v4-460px-769114-9.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: DaedeokClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://velog.velcdn.com/images/io_/post/fe69f46a-5331-4e65-84f0-84d69a9d25ec/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: SeoClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://blog-cdn.tosspayments.com/wp-content/uploads/2022/04/07171631/copyright-5-thumb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: JungClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://www.wikihow.com/images_en/thumb/c/cc/769114-7.jpg/v4-460px-769114-7.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: DongClipper(),
                child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://blog-cdn.tosspayments.com/wp-content/uploads/2022/04/07171631/copyright-5-thumb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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