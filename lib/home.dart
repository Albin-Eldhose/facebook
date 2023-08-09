import 'package:facebook/assets.dart';
import 'package:facebook/section/headerButtonSection.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/section/storySection.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circulorButton.dart';

class Home extends StatelessWidget {
   Home({super.key});
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:const Text('facebook',style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          actions: [
            CirculorButton(
              ButtonIcon: Icons.search,
              ButtonAction: () { print('You clicked SEARCH'); },
            ),

            CirculorButton(ButtonIcon: Icons.message,
            ButtonAction: (){ print("You Clicked Message");  },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(buttonText: 'Live',
                  buttonIcon: Icons.video_call,
                  buttonColor: Colors.red,
                  buttonAction: () { print('Go live'); }),
              buttonTwo: headerButton(buttonText: 'Photos',
                  buttonIcon: Icons.photo_library,
                  buttonColor: Colors.green,
                  buttonAction: (){print('Go to Photos');}),
              buttonThree: headerButton(buttonText: 'Room', buttonIcon: Icons.video_call,
                  buttonColor: Colors.purple,
                  buttonAction: (){ print('Go to Room');}),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(avatar: pedri,
              profileName: 'Pedri',
              publishAt: '2hr',
              postTitle: '!!!!Culers!!!!',
              postImage: pedri, likeCount: '10M',
              shareCount: '10K', commentCount: '50K',),
            thickDivider,
            PostCard(avatar: kevin,
              profileName: 'Kevin',
              publishAt: '3hr',
              postTitle: '!!!!HAPPY!!!!',
              postImage: pic5, likeCount: '5M',
              shareCount: '10K', commentCount: '50K',),
          ],
        )
      ),
    );
  }
}