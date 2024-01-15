import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final dificults = ["Fácil", "Médio", "Difícil", "Perito"];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SizedBox(
        height: 36,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(width: 5);
          },
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: dificults.length,
          itemBuilder: (context, index) {
            return LevelButtonWidget(label: dificults[index]);
          },
        ),
      )
    );
  }
}