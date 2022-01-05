import 'package:facebook_colne_ui/models/PostModel.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostModel postModel ;
  PostCard({this.postModel}) ;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: 350 ,
      // color: Colors.red,
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start ,children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle ,
                  border: Border.all(
                    width: 1 ,
                    color: Colors.black ,
                  ) ,
                  image: DecorationImage(
                      image: NetworkImage(postModel.user.prpfileImage)
                  )

              ),
            ),
            SizedBox(width: 15,) ,
            Text(postModel.user.name , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19),) ,
            SizedBox(width: 5,) ,
            Text(postModel.content , style: TextStyle(  fontSize: 14),) ,
           Spacer() ,
           Icon(Icons.arrow_drop_down_circle_outlined)

          ],
        ) ,

        SizedBox(height: 20,) ,

        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15) ,
              // color: Colors.grey.shade50 ,
              image: DecorationImage(
                  image: NetworkImage(postModel.imageUrl ) ,
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(color: Colors.black12 , blurRadius: 0.7  , offset: Offset(0 , 1)  , spreadRadius: 5)  ,
              ]
          ),
        ) ,
        SizedBox(height: 20,) ,
        Row(children: [
          Container(height: 25,width: 25,decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.blue) , child: Icon(Icons.thumb_up , color: Colors.white,)) ,
          Container(height: 25,width: 25,decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.red) , child: Icon(Icons.favorite , color: Colors.white,)) ,
          SizedBox(width: 12,) ,
          postModel.likes==0?Text('') : Text(postModel.likes.toString() ) ,
          Spacer() ,
          postModel.comments==0 ? Text('') :  Text(postModel.comments.toString() + ' comments' ) ,

        ],) ,
        SizedBox(height: 10,) ,
        Divider() ,
        SizedBox(height: 10,) ,
        Row( mainAxisAlignment: MainAxisAlignment.center, children: [

          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Icon(Icons.thumb_up),
              SizedBox(width: 5,) ,
              Text('Like')
            ],
          )) ,
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Icon(Icons.comment),
              SizedBox(width: 5,) ,
              Text('comment')
            ],
          )) ,

        ],)



      ],),
    );
  }
}