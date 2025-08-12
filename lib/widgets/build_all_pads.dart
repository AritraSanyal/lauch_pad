import 'package:flutter/material.dart';
import 'package:launch_pad/widgets/build_row_4.dart';

class buildAllPads extends StatelessWidget {
  const buildAllPads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow4(soundList: ['1.mp3','2.mp3','3.mp3','4.mp3'],),
        buildRow4(soundList: ['5.mp3','6.mp3','7.mp3','8.mp3'],),
        buildRow4(soundList: ['9.mp3','10.mp3','11.mp3','12.mp3'],),
        buildRow4(soundList: ['13.mp3','14.mp3','15.mp3','16.mp3'],),
        buildRow4(soundList: ['17.mp3','18.mp3','19.mp3','20.wav'],),
        buildRow4(soundList: ['21.wav','22.wav','23.wav','24.wav'],),
        buildRow4(soundList: ['25.wav','26.wav','27.wav','28.wav'],),
      ],
    );
  }
}
