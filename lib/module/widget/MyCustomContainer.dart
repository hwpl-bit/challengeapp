import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;

  const MyCustomContainer({
    this.backgroundColor = Colors.purple,
    this.progressColor = Colors.blue,
    required this.progress,
    required this.size,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size * progress,
                color: progressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}