import 'package:facebook_colne_ui/data/data.dart';
import 'package:flutter/material.dart';

import 'StoryCard.dart';

class Sotries extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          StoryCard(isAddStory: true,) ,
          SizedBox(width: 10,) ,
          Expanded(
              child: Container(
                height: 120,
                child: SingleChildScrollView( scrollDirection:Axis.horizontal ,child: Row(children: stories.map((e) => StoryCard(storyModel: e,isAddStory: false,)).toList(),)),
              )
          ),
        ],
      ),
    ) ;
  }
}
