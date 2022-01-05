import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15 , right: 20 , top: 40 ,bottom: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)) ,

        Expanded(
          child: Container(
            // margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade300 ,
              borderRadius: BorderRadius.circular(12),
            ),

            child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(
                  width: 1 ,
                  color: Colors.grey ,
                ) ,

                    borderRadius: BorderRadius.circular(12)),
                hintText: 'Search' ,
                filled: true,
                fillColor: Colors.grey.shade300,
                contentPadding: EdgeInsets.zero,
                prefixIcon: Icon(Icons.search ,)
            ),),
          ),
        ) ,

        Padding(
          padding: const EdgeInsets.only( left:8.0),
          child: IconButton(onPressed: (){}, icon: Image.network('https://cdn.picpng.com/message/messenger-message-icon-facebook-54965.png' , width: 25,height: 25,)),
        ) ,

      ],),
    );
  }
}