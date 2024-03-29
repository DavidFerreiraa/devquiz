import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(children: [
              Container(
                height: 161,
                width: double.maxFinite,
                decoration: BoxDecoration(gradient: AppGradients.linear),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(
                        text: "Olá, ",
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                            text: "Dev. Ferreira!",
                            style: AppTextStyles.titleBold,
                          )
                        ])),
                    Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(AppImages.avatarUrl)),
                            borderRadius: BorderRadius.circular(10)))
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0.0, 1.0),
                child: ScoreCardWidget()
                )
            ]),
          ),
        );
}
