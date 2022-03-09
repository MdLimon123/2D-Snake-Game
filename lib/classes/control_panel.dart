
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_game/classes/control_button.dart';
import 'package:flutter_snake_game/classes/direction.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key, required this.onTapped})
      : super(key: key);

  final void Function(Direction direction) onTapped;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
        right: 0.0,
        bottom: 50.0,
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: Container()),
                ControlButton(
                    onPressed:(){
                      onTapped(Direction.left);
                    },
                    icon: Icon(Icons.arrow_left)
                )
              ],
            )),
            Expanded(child: Column(
              children: [
                ControlButton(
                    onPressed:(){
                      onTapped(Direction.up);
                    },
                    icon: Icon(Icons.arrow_drop_up)
                ),
                SizedBox(height: 40,),
                ControlButton(
                    onPressed:(){
                      onTapped(Direction.down);
                    },
                    icon: Icon(Icons.arrow_drop_down)
                ),
              ],
            )),

            Expanded(
                child: Row(
                  children: [

                    ControlButton(
                        onPressed:(){
                          onTapped(Direction.right);
                        },
                        icon: Icon(Icons.arrow_right)
                    ),
                    Expanded(child: Container()),
                  ],
                )
            ),
          ],
        )
    );
  }
}
