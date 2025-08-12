import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class soundPad extends StatefulWidget {
  final String soundFile;
  final List<Color> colorList;

  const soundPad({super.key, required this.soundFile, required this.colorList});

  @override
  State<soundPad> createState() => _soundPadState();
}

class _soundPadState extends State<soundPad> {
  // final _audioPlayer = AudioPlayer();
  late Color _colorCenter;
  late Color _colorOutline;

  @override
  void initState() {
    _colorCenter = widget.colorList[0];
    _colorOutline = widget.colorList[1];
    super.initState();
  }

  Future<void> _playSound() async {
    setState(()  {
      _colorCenter = Colors.white;
      _colorOutline = Colors.white;
      //each tap gets its own AudioPlayer object
      final _audioPlayer = AudioPlayer();
      _audioPlayer.play(AssetSource(widget.soundFile));
    });

    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      _colorCenter = widget.colorList[0];
      _colorOutline = widget.colorList[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: _playSound,
      child: Container(
        height: height / 8.2,
        width: width / 4.2,
        margin: EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: RadialGradient(
              colors: [_colorCenter, _colorOutline], radius: 0.5),
        ),
      ),
    );
  }
}
