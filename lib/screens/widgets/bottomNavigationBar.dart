

import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar () {
  return BottomNavigationBar(onTap: (value) {
  } , selectedItemColor: Colors.deepPurple ,  unselectedItemColor: Colors.black ,items: [


    BottomNavigationBarItem(icon: Icon(Icons.whatshot ) , label: ' ') ,
    BottomNavigationBarItem(icon: Icon(Icons.people) ,  label: ' ') ,
    BottomNavigationBarItem(icon: Icon(Icons.airplay_outlined) ,  label: ' ') ,
    BottomNavigationBarItem(icon: Icon(Icons.person) ,  label: ' ') ,
  ],

    showUnselectedLabels: false,
    showSelectedLabels: false,
  ) ;
}





