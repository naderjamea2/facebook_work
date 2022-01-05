import 'package:facebook_colne_ui/models/StoryModel.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  StoryModel storyModel ;
  bool isAddStory ;
  StoryCard({this.isAddStory = true , this.storyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        margin: EdgeInsets.only(right: 5),
        padding: EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        width: 80,
        decoration: isAddStory ?
        BoxDecoration(color: Colors.grey.shade500 , borderRadius: BorderRadius.circular(14)):
        BoxDecoration(image: DecorationImage(image: NetworkImage(storyModel.imageUrl) , fit: BoxFit.cover) ,color: Colors.cyan , borderRadius: BorderRadius.circular(14)),
        child: isAddStory?
        // if is add story
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(6),
              alignment: Alignment.topLeft,
              height: 25 ,width: 25 ,
              decoration: BoxDecoration( color: Colors.black12,shape: BoxShape.circle ,
                border: Border.all(
                    color: Colors.white30 ,
                    width: 1.5
                ),) , child: Icon(Icons.add , color: Colors.white,), ),
            Text('Add Story' , style: TextStyle(color: Colors.white , fontSize: 18),)  ,
          ],
        ):
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(2),
              height: 25 ,width: 25 ,
              decoration: BoxDecoration( color: Colors.cyan,shape: BoxShape.circle ,
                  border: Border.all(
                      color: Colors.white30 ,
                      width: 1.5
                  ),
                  image: DecorationImage(image: NetworkImage(storyModel.user.prpfileImage))
              ),),
            Text(storyModel.user.name , style: TextStyle(color: Colors.white , fontSize: 18),)  ,
          ],
        ) );


  }
}