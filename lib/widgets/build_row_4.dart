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
        soundPad(soundFile: soundList[0],colorList: [Color(0xffADCBFC), Color(0xff067CCB),],),
        soundPad(soundFile: soundList[1],colorList: [Color (0xffff2525), Color(0xffc40050),],),
        soundPad(soundFile: soundList[2],colorList: [Color (0xffADCBFC), Color(0xff067CCB),],),
        soundPad(soundFile: soundList[3],colorList: [Color (0xffE247FC), Color (0xffA23AB7),],)
      ],
    );
  }
}
