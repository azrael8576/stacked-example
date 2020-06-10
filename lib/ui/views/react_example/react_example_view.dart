import 'package:flutter/material.dart';
import 'package:stacked_example/ui/views/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:stacked_example/ui/views/smart_widgets/single_increase_counter/single_increase_counter.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: <Widget>[
          SingleIncreaseCounter(),
          SizedBox(width: 50),
          DoubleIncreaseCounter(),
        ],),
      ),
    );
  }
}
