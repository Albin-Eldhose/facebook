import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 2,left: 2),
        children: [
          createRoomButton(),

          Avatar(displayimage: messi, displayStatus: true,),
          Avatar(displayimage:ronaldo, displayStatus: true,),
          Avatar(displayimage: chetri, displayStatus: true,),
          Avatar(displayimage: iniesta, displayStatus: true,),
          Avatar(displayimage: pedri, displayStatus: true,),
          Avatar(displayimage: neymer, displayStatus: true,),
          Avatar(displayimage: kevin, displayStatus: true,),
          Avatar(displayimage: zlatan, displayStatus: true,),
          Avatar(displayimage: messi, displayStatus: true,),
          Avatar(displayimage:ronaldo, displayStatus: true,),
          Avatar(displayimage: chetri, displayStatus: true,),
          Avatar(displayimage: iniesta, displayStatus: true,),
          Avatar(displayimage: pedri, displayStatus: true,),
          Avatar(displayimage: neymer, displayStatus: true,),
          Avatar(displayimage: kevin, displayStatus: true,),
          Avatar(displayimage: zlatan, displayStatus: true,)
        ],
      ),
    );
  }
  createRoomButton(){
    return Container(
      padding: EdgeInsets.all(5) ,
      child: OutlinedButton.icon(style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(color: Colors.lightBlue)
      ) ,
        onPressed: (){
          print('Clicked Create Room');
        }, icon: Icon(Icons.video_call,color: Colors.purple,),
        label: Text('Create\n Room',
          style: TextStyle(
              color: Colors.blue),
        ),
      ),
    );
  }
}
