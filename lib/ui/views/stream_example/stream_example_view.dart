import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stream_example_viewmodel.dart';

class StreamExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => StreamExampleViewModel(),
    );
  }
}
