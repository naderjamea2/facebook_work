import 'UserModel.dart';

class PostModel {
  UserModel user ;
  String imageUrl ;
  int likes ;
  int comments ;
  String content ;



  PostModel({this.user ,this.imageUrl ,this.comments ,this.content ,this.likes}) ;
}