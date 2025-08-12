import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/build_all_pads.dart';


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
        title: Text("LauchPad",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.black,

      ),
      body: Center(
        child: buildAllPads(),
      ),
    );
  }
}



