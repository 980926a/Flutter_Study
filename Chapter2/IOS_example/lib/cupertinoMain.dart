import 'package:flutter/cupertino.dart';

import 'animalItem.dart';
import 'iosSub/cupertinoFirstPage.dart';
import 'iosSub/cupertinoSecondPage.dart';


List<Animal> favoriteList = List.empty(growable: true);
List<Cookies> favoriteList2 = List.empty(growable: true);

class CupertinoMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CupertinoMain();
  }
}

class _CupertinoMain extends State<CupertinoMain> {
  CupertinoTabBar? tabBar;
  List<Animal> animalList = List.empty(growable: true);
  List<Cookies> cookiesList = List.empty(growable: true);


  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);

    animalList.add(
        Animal(animalName: "닉네임", kind: "곤충", imagePath: "repo/images/bee.png"));
    animalList.add(Animal(
        animalName: "고양이", kind: "포유류", imagePath: "repo/images/cat.png"));
    animalList.add(Animal(
        animalName: "젖소", kind: "포유류", imagePath: "repo/images/cow.png"));
    animalList.add(Animal(
        animalName: "강아지", kind: "포유류", imagePath: "repo/images/dog.png"));
    animalList.add(Animal(
        animalName: "여우", kind: "포유류", imagePath: "repo/images/fox.png"));
    animalList.add(Animal(
        animalName: "원숭이", kind: "영장류", imagePath: "repo/images/monkey.png"));
    animalList.add(Animal(
        animalName: "돼지", kind: "포유류", imagePath: "repo/images/pig.png"));
    // animalList.add(Animal(
    //     animalName: "늑대", kind: "포유류", imagePath: "repo/images/wolf.png"));
    cookiesList.add(Cookies(
      nickname: "보똥이", age_tag: "25", school_tag: "광운대학교", major_tag: "소프트웨어학부"));
    cookiesList.add(Cookies(
        nickname: "보똥이", age_tag: "25", school_tag: "광운대학교", major_tag: "소프트웨어학부"));
    cookiesList.add(Cookies(
        nickname: "보똥이", age_tag: "25", school_tag: "광운대학교", major_tag: "소프트웨어학부"));
    cookiesList.add(Cookies(
        nickname: "보똥이", age_tag: "25", school_tag: "광운대학교", major_tag: "소프트웨어학부"));


  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(tabBar: tabBar!, tabBuilder: (context , value){
        if(value == 0){
          return CupertinoFirstPage(animalList: animalList, cookiesList: cookiesList);
        }else{
          return CupertinoSecondPage(animalList: animalList,);
        }
      }),
    );
  }
}