import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circulorButton.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    required this.labelText,
    required this.storyImage,
    required this.avatar,
    this.createStoryStatus = false,
  });

final String labelText;
final String storyImage;
final String avatar;
final bool createStoryStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 4,left: 4,top: 12,bottom: 12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,left: 5,
            child: createStoryStatus ? CirculorButton(
              ButtonIcon: Icons.add,
              ButtonAction: (){print("clicked Add ");},
              IconColor: Colors.blue,
          ) : Avatar(displayimage: avatar,
              displayStatus: false,
              displayBorder: true,),
          ),
          Positioned(
              bottom: 10,left: 10,
              child: Text(labelText,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
          ),
        ],

      ),
    );
  }
}
