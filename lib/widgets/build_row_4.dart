import 'package:flutter/material.dart';
class buildRow4 extends StatelessWidget {
  const buildRow4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 90,
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
          ),
          child: Icon(Icons.abc),
        ),
        
        Container(
          height: 100,
          width: 90,
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.pink,
          ),
          child: Icon(Icons.abc),
        ),
        Container(
          height: 100,
          width: 90,
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
          ),
          child: Icon(Icons.abc),
        ),
        Container(
          height: 100,
          width: 90,
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.purple,
          ),
          child: Icon(Icons.abc),
        ),
      ],
    );
  }
}