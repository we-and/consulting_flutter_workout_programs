import 'package:flutter/material.dart';
import 'package:workout_programs/entities/program_item.dart';
import 'package:workout_programs/my_programs/my_programs_content.dart';
import 'package:workout_programs/my_programs/my_programs_footer.dart';
import 'package:workout_programs/my_programs/my_programs_header.dart';

class MyProgramPage extends StatelessWidget{
  const MyProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProgramItem> programs=[
      ProgramItem('https://cdn.mos.cms.futurecdn.net/oNagae9ti6RqZwAz8s5EmD.png'     , "Buttocks", "Matt Damon", 8),
      ProgramItem('https://hips.hearstapps.com/hmg-prod/images/at-home2-1580222777.jpg?resize=2048:*'
      , "Back", "My Program",15),
    ];

    return Column(children: [
      MyProgramPageHeader(),
      MyProgramPageContent(programs),
      MyProgramPageFooter(),
    ],);
  }
}

class MyProgramPageFooter extends StatelessWidget{
  const MyProgramPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    double W=MediaQuery.of(context).size.width;

    return Container(
      width: W,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyProgramPageFooterTag(),
              MyProgramPageFooterDesc()
            ],),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
        ],
      ),
    );
  }
}
