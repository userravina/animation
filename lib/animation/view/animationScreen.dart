import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/animationController.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> with TickerProviderStateMixin {
  Animation_Controller controller = Get.put(Animation_Controller());
  AnimationController? animationController;
  Animation? colortween;
  Animation? size;
  int i = 0;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    colortween = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(animationController!)
      ..addListener(() {
        setState(() {});
      });
    size = Tween<double>(begin: 100, end: 200).animate(animationController!)
      ..addListener(() {
        setState(() {});
      });
    animationController!.repeat(reverse: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(
                () {
                  i++;
                },
              );
            },
            child: AnimatedAlign(
              duration: Duration(seconds: 1),
              alignment: i % 2 == 0 ? Alignment.topLeft : Alignment.bottomRight,
              child: AnimatedBuilder(
                builder: (context, child) {
                  return Transform.rotate(
                    angle: animationController!.value * pi,
                    child: child,
                  );
                },
                animation: animationController!,
                child: Container(
                    width: size!.value,
                    height: size!.value,
                    decoration: BoxDecoration(
                      color: colortween!.value,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
