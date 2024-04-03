import 'package:flutter/material.dart';
import 'package:workout_programs/entities/program_item.dart';


£
class MyProgramPageContent extends StatelessWidget{
  final List<ProgramItem> program;
  const MyProgramPageContent(this.program,{super.key});

  @override
  Widget build(BuildContext context) {
    double H=MediaQuery.of(context).size.height;
    return Container(
      height: H-350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyProgramPageContentTitle(),
          Column(children: program.map((p)=>
              MyProgramPageContentCard(p)).toList(),
          )
        ],),
    );
  }
}










class MyProgramPageContentTitle extends StatelessWidget{
  const MyProgramPageContentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    int nPrograms=0;
    int nProgramAvailable=10;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text("My Programs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
    )
    ;
  }
}

class MyProgramPageContentCard extends StatelessWidget{
  final ProgramItem program;
  const MyProgramPageContentCard(this.program,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey,width: 1)),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(children: [
            MyProgramPageContentCardImage(program),
            MyProgramPageContentCardDesc(program),
          ],),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,)
        ],),
    );
  }
}


















class MyProgramPageContentCardImage extends StatelessWidget{
  final ProgramItem program;
  const MyProgramPageContentCardImage(this.program,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ClipRRect(borderRadius: BorderRadius.circular(60),
            child: Image.network(program.image_src,width: 60,height: 60,fit:BoxFit.cover ,)));
  }
}
class MyProgramPageContentCardDesc extends StatelessWidget{
  final ProgramItem program;
  const MyProgramPageContentCardDesc(this.program,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(program.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Text(program.author,style: TextStyle(color: Colors.grey.shade700),),
          Text("${program.nb_workouts} workouts",style: TextStyle(color: Colors.blue),)
        ],),
    );
  }
}

