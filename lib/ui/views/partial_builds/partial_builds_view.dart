import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../logger.dart';

class PartialBuildsView extends StatelessWidget {
  final log = getLogger('PartialBuildsView');

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) {
        print('PartialBuildsView rebuilt');
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
          floatingActionButton:
              FloatingActionButton(onPressed: () => log.e('hello world')),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildsViewModel model,
  ) {
    print('_StringForm rebuilt');
    var text = useTextEditingController();
    return Container(
      child: TextField(
        controller: text,
        onChanged: model.updateString,
      ),
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('_TitleAndValue rebuilt');
    return Column(
      children: <Widget>[
        Text(
          model.title ?? '',
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
