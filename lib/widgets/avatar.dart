import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({required this.displayimage,
    required this.displayStatus,
  this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });

  final String displayimage;
  final bool displayStatus;
  final bool displayBorder ;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                   ? Border.all(color: Colors.blueAccent,
                   width: 3)
                   : Border()
          ),

          padding: EdgeInsets.only(left: 2,right: 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,),
          ),
        ),

        displayStatus == true ?  Positioned(
             right: 1.0,
             bottom: 0,
             child: Container(
               width: 15,
               height: 15,
               decoration: BoxDecoration(
                 color: Colors.greenAccent,
                 shape: BoxShape.circle,
                 border: Border.all(
                   color: Colors.white,
                   width: 2,
                 ), ),
             ))
        : SizedBox(),

      ],
    );
  }
}
