import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculadora/bloc/calculator/calculator_bloc.dart';

import 'line_separator.dart';
import 'main_result.dart';
import 'sub_result.dart';

class ResultsLabels extends StatefulWidget {
  ResultsLabels({Key? key}) : super(key: key);

  @override
  State<ResultsLabels> createState() => _ResultsLabelsState();
}

class _ResultsLabelsState extends State<ResultsLabels> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operation),
            SubResult(text: state.secondNumber),
            LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
