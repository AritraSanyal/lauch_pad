import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/build_all_pads.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.orbitron(
          color: Colors.white,
          fontSize: 30

        )
        ),
        backgroundColor: Colors.black,

      ),
      body: Center(
        child: buildAllPads(),
      ),
    );
  }
}



