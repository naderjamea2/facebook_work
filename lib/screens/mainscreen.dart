
import 'package:facebook_colne_ui/data/data.dart';
import 'package:facebook_colne_ui/screens/widgets/bottomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/PostCard.dart';
import 'widgets/Sotries.dart';

import 'widgets/header.dart';

class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          child: Column(
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text('Stories',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text('See Activites', style: TextStyle(fontSize: 16,),),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios, size: 16,)
                      ],
                    ),
                  ),

                ],),
              ),
              Sotries() ,
             Column(children: posts.map((e) => PostCard(postModel: e,)).toList(),)
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation:FloatingActionButtonLocation.miniEndFloat ,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add ,),backgroundColor: Colors.deepPurple,),
      bottomNavigationBar: bottomNavigationBar() ,
    );
  }
}






