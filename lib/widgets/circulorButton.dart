import 'package:flutter/material.dart';

class CirculorButton extends StatelessWidget {
  const CirculorButton({ required this.ButtonIcon,
    required this.ButtonAction,
    this.IconColor = Colors.black});

  final IconData ButtonIcon;
  final void Function() ButtonAction;
  final Color IconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          shape: BoxShape.circle,
        ),
        child: IconButton(
            icon: Icon(ButtonIcon,
              color: IconColor,
              size:25,),
            onPressed: (){
              ButtonAction;
            }

        ),
    );
  }
}
