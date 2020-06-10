import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_example/ui/views/home/home_view.dart';
import 'package:stacked_example/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;
  HomeView homeViewRoute;
}