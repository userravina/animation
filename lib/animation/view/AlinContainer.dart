import 'package:flutter/material.dart';

class AlinContainer extends StatefulWidget {
  const AlinContainer({super.key});

  @override
  State<AlinContainer> createState() => _AlinContainerState();
}

class _AlinContainerState extends State<AlinContainer> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
