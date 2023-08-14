import 'package:flutter/material.dart';
import 'package:practice/Drow/view/class.dart';

class DrowScreen extends StatefulWidget {
  const DrowScreen({super.key});

  @override
  State<DrowScreen> createState() => _DrowScreenState();
}

class _DrowScreenState extends State<DrowScreen > {
  @override
  Widget build(BuildContext  context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(painter: Triangle(), size: Size.infinite),
      ),
    );
  }
}

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas , Size size) {
    var paint = Paint();
    paint
       ..strokeWidth = 15
      ..strokeCap = StrokeCap.round
      ..color = Colors.deepOrange;

    var path = Path();
    path
      ..moveTo(0, size.height /2)
      ..lineTo(size.width / 2, 0)..lineTo(size.width, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
