import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(labelText: 'Add To Story', storyImage: messi, avatar: messi,createStoryStatus: true,),
          StoryCard(labelText: 'Christiano', avatar: ronaldo, storyImage: pic2,),
          StoryCard(labelText: 'Iniesta', storyImage: pic5, avatar: iniesta),
          StoryCard(labelText: 'Zlatan', avatar: zlatan, storyImage: pic3),
          StoryCard(labelText: 'Pedri', storyImage: pic1, avatar:pedri),
          StoryCard(labelText: 'Sunil Chetri', avatar: chetri, storyImage: pic4,)

        ],
      ),
    );
  }
}