import 'package:arhant_solution_task/arhant_solution_icon_icons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: SafeArea(child: Column(
        children: [
          Text("Welcome Home"),
          Icon(ArhantSolutionIcon.vector___0)
        ],
      )),
    );
  }
}