import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayimage: messi, displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          hintStyle: TextStyle( color:Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none
        ),
      )
    );
  }
}
