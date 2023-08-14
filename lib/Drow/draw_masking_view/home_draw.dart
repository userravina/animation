import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Custom Clipping(Masking)"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'second');
                },
                child: Icon(Icons.arrow_forward))
          ],
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: ClipOval(
              // clipper: TriangleShape(),
              child: Image.asset("assets/images/HardBackground.jpg",
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}

class TriangleShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}