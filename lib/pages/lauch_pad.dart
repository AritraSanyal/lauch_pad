import 'package:flutter/material.dart';

class LauchPad extends StatefulWidget {
  const LauchPad({super.key});

  @override
  State<LauchPad> createState() => _LauchPadState();
}

class _LauchPadState extends State<LauchPad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("LauchPad"),
        backgroundColor: Colors.black,

      ),
      body: Center(
        child: Container(
          child: Text("LaunchPad Page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}