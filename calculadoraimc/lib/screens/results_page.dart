import 'package:calculadoraimc/result_object.dart';
import 'package:flutter/material.dart';

import '../componentes/bottom_button.dart';
import '../componentes/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult;
  final results_object? result;
  final String? basalMetabolism;

  const ResultsPage({this.bmiResult, this.result, this.basalMetabolism});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Seu resultado",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              color: kInactiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result!.resultText!.toUpperCase(),
                    style: result!.resultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMItextStyle,
                  ),
                  Text(
                    basalMetabolism!,
                    style: result!.resultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Novo cálculo',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
