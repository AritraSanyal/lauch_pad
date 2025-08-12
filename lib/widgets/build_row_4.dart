import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/sound_pad.dart';

class buildRow4 extends StatelessWidget {
  final List<String> soundList;
  const buildRow4({
    super.key,
    required this.soundList
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        soundPad(soundFile: soundList[0],colorList: [Colors.blue[50]!, Colors.blue[400]!],),
        soundPad(soundFile: soundList[1],colorList: [Colors.red, Colors.pink[400]!],),
        soundPad(soundFile: soundList[2],colorList: [Colors.blue[50]!, Colors.blue[400]!],),
        soundPad(soundFile: soundList[3],colorList: [Colors.purple[100]!, Colors.purple],)
      ],
    );
  }
}
