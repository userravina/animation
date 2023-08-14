import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/provider/Counter_app_with_getx/countroler/countroler_counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

CounterCountroler countroler = Get.put(CounterCountroler());

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, title: Text("Counter App Using Getx")),
      body: Column(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Center(
                child: Text(
                  "${countroler.i}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    countroler.i++;
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    countroler.i--;
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 30),
                  ),
                  backgroundColor: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    countroler.i.value = (countroler.i * 2).toInt();
                  },
                  child: Text(
                    "2X",
                    style: TextStyle(fontSize: 15),
                  ),
                  backgroundColor: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    countroler.i.value = (countroler.i * 3).toInt();
                  },
                  child: Text(
                    "3X",
                    style: TextStyle(fontSize: 15),
                  ),
                  backgroundColor: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    countroler.i.value = (countroler.i * 4).toInt();
                  },
                  child: Text(
                    "4X",
                    style: TextStyle(fontSize: 15),
                  ),
                  backgroundColor: Colors.black,
                ),
                FloatingActionButton(
                  onPressed: () {
                    countroler.i.value = (countroler.i * 5).toInt();
                  },
                  child: Text(
                    "5X",
                    style: TextStyle(fontSize: 15),
                  ),
                  backgroundColor: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
