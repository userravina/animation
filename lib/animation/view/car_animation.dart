import 'dart:async';
import 'package:flutter/material.dart';

class CarAnimationScreen extends StatefulWidget {
  const CarAnimationScreen({Key? key}) : super(key: key);

  @override
  _CarAnimationScreenState createState() => _CarAnimationScreenState();
}

class _CarAnimationScreenState extends State<CarAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        lowerBound: 0,
        upperBound: 600);

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/11.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 150,
                ),
                GestureDetector(onDoubleTap: () {
                  setState(() {
                    controller.stop();
                  });
                },
                  onTap: () {
                    setState(() {
                      controller.repeat(reverse: true);
                    });
                  },
                  child: Container(

                    margin: EdgeInsets.only(right: controller.value),
                    child: Text('🚗', style: TextStyle(fontSize: 100),),

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ElevatedButton(onPressed: (){
                    //   controller.forward();
                    // }, child: Text('Forward')),
                    // ElevatedButton(onPressed: (){
                    //   controller.stop();
                    // }, child: Text('Stop')),
                    // ElevatedButton(onPressed: (){
                    //   controller.reverse();
                    // }, child: Text('Reverse')),
                  ],
                ),
                // SizedBox(height: 10,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ElevatedButton(onPressed: (){
                //       controller.repeat(reverse:true);
                //     }, child: Text('Loop')),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
