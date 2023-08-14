import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Tween2_Sequence extends StatefulWidget {
  const Tween2_Sequence({super.key});

  @override
  State<Tween2_Sequence> createState() => _Tween2_SequenceState();
}

class _Tween2_SequenceState extends State<Tween2_Sequence>
    with SingleTickerProviderStateMixin {
  AnimationController? aniControlTweenSequence;
  Animation? alignTween;

  @override
  void initState() {
    super.initState();

    aniControlTweenSequence =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    alignTween = TweenSequence(
      [
        TweenSequenceItem(
            tween: Tween(begin: Alignment.topLeft, end: Alignment.topRight),
            weight: 1),
        TweenSequenceItem(
            tween: Tween(begin: Alignment.topRight, end: Alignment.bottomRight),
            weight: 1),
        TweenSequenceItem(
            tween:
                Tween(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
            weight: 1),
        TweenSequenceItem(
            tween: Tween(begin: Alignment.bottomLeft, end: Alignment.topLeft),
            weight: 1),
      ],
    ).animate(aniControlTweenSequence!);

    aniControlTweenSequence!.repeat(reverse: false);
    aniControlTweenSequence!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
            ),
            Align(
              alignment: alignTween!.value,
              child: AnimatedBuilder(
                animation: aniControlTweenSequence!,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                builder: (context, child) {
                  return Transform.rotate(
                      angle: aniControlTweenSequence!.value * pi * 2,
                      child: child);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
