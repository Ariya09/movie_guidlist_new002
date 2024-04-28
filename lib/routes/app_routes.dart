import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/main.dart';

class AppRoute extends Module {
  @override
  bine(i) {}

  @override
  routes(r) {
    // TODO: implement routes
    r.child('/', child: (context) => MyMainApp());
  }
}
