import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:practice/Drow/view/DrowScreen.dart';
import 'package:practice/animation/view/AnimationContainer.dart';
import 'package:practice/animation/view/StraggedAnimation.dart';
import 'package:practice/animation/view/animationScreen.dart';
import 'package:practice/animation/view/animationtwo.dart';
import 'package:practice/animation/view/car_animation.dart';
import 'package:practice/provider/Counter_app_with_getx/view/Cointerscreen.dart';
import 'package:practice/sliver/sliver_Screen.dart';
import 'package:sizer/sizer.dart';

import 'Drow/draw_masking_view/draw_masking.dart';
import 'Drow/draw_masking_view/home_draw.dart';
import 'Drow/draw_masking_view/third_Screen.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => homeScreen(),
          'second': (context) => SecondSCreen(),
          'third':(context) => ThirdScreen(),
        },
      ),
    ),
  );
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight
  // ]);
}