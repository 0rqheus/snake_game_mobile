import 'package:flutter/material.dart';
import '../data_classes/DirectionEnum.dart';

class Gamepad extends StatelessWidget {
  final void Function(Direction direction) move;

  Gamepad(this.move);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_up),
                  color: Colors.white,
                  onPressed: () => move(Direction.Up)),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.white,
                  onPressed: () => move(Direction.Left)),
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  color: Colors.white,
                  onPressed: () => move(Direction.Down)),
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Colors.white,
                  onPressed: () => move(Direction.Right)),
            )
          ],
        )
      ],
    );
  }
}
