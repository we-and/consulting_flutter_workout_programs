import 'package:flutter/material.dart';
import 'package:workout_programs/ProgramPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          
          bottomNavigationBar:  SafeArea(
            bottom: false,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(icon: Icon(Icons.calendar_month)),
                  Tab(icon: Icon(Icons.person_outline)),
                ],
              ),
            ),
          ),
         // title: Text('Tabs Demo'),

      body:SafeArea(child:  MyProgramPage()
      )
    ));
  }
}
