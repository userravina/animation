import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/animationController.dart';

class container extends StatefulWidget {
  const container({super.key});

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> with TickerProviderStateMixin {
  Animation_Controller controller = Get.put(Animation_Controller());
  AnimationController? animationController;
  Animation? colortween;
  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3),);
    colortween = Tween(begin: Colors.red,end: Colors.green).animate(animationController!);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {

            },
            child: InkWell(onTap: () {
              setState(
                    () {
                  i++;
                },
              );
            },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: i%2 == 0 ? 100 : 200,
                height: i%2 == 0 ? 100 : 200,
                color: i%2 == 0 ? Colors.green : Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}