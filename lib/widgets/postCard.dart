import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

import '../section/headerButtonSection.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    required this.avatar,
    required this.profileName,
    required this.publishAt,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });
final String avatar;
final String profileName;
final  String publishAt;
final String postTitle;
final String postImage;
final String likeCount;
final String commentCount;
final String shareCount;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(displayimage: avatar,
                displayStatus: false),
            title: Row(
              children: [
                Text(profileName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(width:10),
                BlueTick(),
              ],
            ),
            subtitle: Row(
              children: [
                Text(publishAt == null ? "" : publishAt),
                SizedBox(width: 10,),
                Icon(Icons.public,
                  color: Colors.grey[700],
                  size: 15,),
              ],
            ),
            trailing: IconButton(
              onPressed: (){
                print('Open Menu');
              }, icon: Icon(Icons.more_horiz,color: Colors.grey[300],),
              
            ),
          ),
          titleSection(),
          imageSection(),
          footSection(),
          Divider(
            color: Colors.grey[300],
          thickness: 1,),
          HeaderButtonSection(
            buttonOne: headerButton(buttonText: 'Like',
                buttonIcon: Icons.thumb_up,
                buttonColor: Colors.grey.shade700,
                buttonAction: (){ print('Go to Like');}),
            buttonTwo: headerButton(buttonText: 'Comments',
                buttonIcon: Icons.comment,
                buttonColor: Colors.grey.shade700,
                buttonAction: (){ print('Go to comment');}),
            buttonThree: headerButton(buttonText: 'Share',
                buttonIcon: Icons.share,
                buttonColor: Colors.grey.shade700,
                buttonAction: (){ print('Go to share');}),),
        ]
      ),
    );
  }
  Widget titleSection(){
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(postTitle == null ? ""  : postTitle,
        style: TextStyle(fontSize: 16),) ,
    );
  }
  Widget imageSection(){
    return Container(
      child: Image.asset(postImage)
    );
  }
  Widget footSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(
          left: 10,
          right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child:
                  Icon(Icons.thumb_up,
                    color: Colors.white,size: 10,),
                ),
              ],
            ),
          ),
          displayText(label: likeCount),

          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5,),
                displayText(label: 'Comments'),
                SizedBox(width: 15,),
                displayText(label: shareCount),
                SizedBox(width: 5,),
                displayText(label: 'Shares'),
                Avatar(displayimage: avatar,
                    displayStatus: false,
                width: 25,height: 25,),
                SizedBox(width: 5,),
                IconButton(onPressed: (){
                  print('Dropdown pressed');
                }, icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],),),
              ],
            ),
          ),
        ],
      ),

    );
  }
  Widget displayText({required String label}){
    return Text(
      label,
      style: TextStyle(
      color: Colors.grey[700],
    ),);
  }
}
