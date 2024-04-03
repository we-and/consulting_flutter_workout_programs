import 'package:flutter/material.dart';
class MyProgramPageFooterTag extends StatelessWidget{
  const MyProgramPageFooterTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)),
        child: Text("Trainer".toUpperCase(),style: TextStyle(color: Colors.white),)
    );
  }
}
class MyProgramPageFooterDesc extends StatelessWidget{
  const MyProgramPageFooterDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create your own program",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            Text("Share your workouts and make money",style: TextStyle(color: Colors.white),),
          ],
        )
    );
  }
}