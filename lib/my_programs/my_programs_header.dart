
import 'package:flutter/material.dart';
class MyProgramPageHeader extends StatelessWidget{
  const MyProgramPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(children: [
            MyProgramPageHeaderAvatar(),
            MyProgramPageHeaderDesc(),

          ],),
          MyProgramPageHeaderIcon()
        ],),
    );
  }
}

class MyProgramPageHeaderAvatar extends StatelessWidget{
  const MyProgramPageHeaderAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    String src='https://media.istockphoto.com/id/2004820764/photo/beautiful-woman-with-cup-of-coffee-at-home.jpg?s=612x612&w=0&k=20&c=ob99-wcrWHQ-HWQo-kyJ2OmYCLGSM7BSMvR1v4AEuSo=';
    return Container(
        child: ClipRRect(borderRadius: BorderRadius.circular(60),
            child: Image.network(src,width: 60,height: 60,fit:BoxFit.cover ,)));
  }
}
class MyProgramPageHeaderDesc extends StatelessWidget{
  const MyProgramPageHeaderDesc({super.key});

  @override
  Widget build(BuildContext context) {
    int nPrograms=0;
    int nProgramAvailable=10;
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Elena",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          Text("$nPrograms out of $nProgramAvailable programs are available",style: TextStyle(color: Colors.blue),),
        ],),
    );
  }
}
class MyProgramPageHeaderIcon extends StatelessWidget{
  const MyProgramPageHeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.settings_outlined);
  }
}