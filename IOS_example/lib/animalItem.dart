import 'package:flutter/material.dart';

class Animal{
  String imagePath;
  String animalName;
  String kind;
  bool? flyExist = false;

  Animal({ required this.animalName, required this.kind, required this.imagePath, this.flyExist});

}

class Cookies{
  String nickname;
  String age_tag;
  String school_tag;
  String major_tag;

  Cookies({ required this.nickname, required this.age_tag, required this.school_tag, required this.major_tag});

}