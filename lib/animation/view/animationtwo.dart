import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Animationtwo extends StatefulWidget {
  const Animationtwo({super.key});

  @override
  State<Animationtwo> createState() => _AnimationtwoState();
}

class _AnimationtwoState extends State<Animationtwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: () {
            Get.toNamed('/');
          },
          child: Hero(
            tag: 'l1',
            child: Center(
              child: FlutterLogo(
                size: 90,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
