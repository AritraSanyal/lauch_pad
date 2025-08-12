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
  bool _isPlaying = false;

  Future<void> _playSound() async {
    setState(() {
      _isPlaying = true;
    });

    //each tap gets its own AudioPlayer object
    final _audioPlayer = AudioPlayer();
    await _audioPlayer.play(AssetSource(widget.soundFile));
    _audioPlayer.onPlayerComplete.listen((_) {
      setState(() {
        _isPlaying = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _playSound,
      child: Container(
        height: 100,
        width: 90,
        margin: EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: _isPlaying ? Colors.white : null,
          gradient: _isPlaying
              ? null
              : RadialGradient(colors: widget.colorList, radius: 0.5),
        ),
      ),
    );
  }
}
