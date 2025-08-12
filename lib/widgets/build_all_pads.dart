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
        buildRow4(),
        buildRow4(),
        buildRow4(),
        buildRow4(),
        buildRow4(),
        buildRow4(),
        buildRow4(),
        
      ],
    );
  }
}
