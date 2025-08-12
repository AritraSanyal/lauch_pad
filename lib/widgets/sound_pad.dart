import 'package:flutter/material.dart';

class soundPad extends StatefulWidget {
  final String soundFile;
  final List<Color> colorList;

  const soundPad({
    super.key,
    required this.soundFile,
    required this.colorList
  });

  @override
  State<soundPad> createState() => _soundPadState();
}

class _soundPadState extends State<soundPad> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 90,
      margin: EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: RadialGradient(
          colors:widget.colorList,
          radius: 0.5),
      ),
    );
  }
}
