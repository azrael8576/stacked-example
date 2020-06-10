import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_example/app/router.gr.dart';
import 'package:stacked_example/ui/views/future_example/future_example_view.dart';
import 'package:stacked_example/ui/views/partial_builds/partial_builds_view.dart';
import 'package:stacked_example/ui/views/react_example/react_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
//      initialRoute: Routes.startupViewRoute,
    //Testing only
      home: FutureExampleView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
