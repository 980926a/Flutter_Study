import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animalItem.dart';
import '../cupertinoMain.dart';

class CupertinoFirstPage extends StatelessWidget {
  final List<Animal> animalList;
  final List<Cookies> cookiesList;

  const CupertinoFirstPage({Key? key, required this.animalList, required this.cookiesList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(child: Icon(Icons.arrow_back_ios), onPressed: (){},),
          middle: Text('받은 쿠키'),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                padding: EdgeInsets.all(2),
                height: 100,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          animalList[index].imagePath,
                          fit: BoxFit.contain,
                          width: 80,
                          height: 80,
                        ),
                        Text(cookiesList[index].nickname)
                      ],
                    ),
                    Container(
                      height: 1,
                      color: CupertinoColors.black,
                    )
                  ],
                ),
              ) ,
              onTap: (){
                showCupertinoDialog(context: context, builder: (context){
                  return CupertinoAlertDialog(
                    title: Text(cookiesList[index].major_tag),
                  );
                });
              },
              onLongPress: (){
                print('add fav');
                favoriteList.add(Animal(animalName: animalList[index].animalName, kind: animalList[index].kind, imagePath: animalList[index].imagePath));
              },
            );
          },
          itemCount: animalList.length,
        ));
  }
}