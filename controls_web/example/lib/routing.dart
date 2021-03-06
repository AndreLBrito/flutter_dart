import 'package:controls_web/services/routes.dart';

import 'views/entrada_view.dart';
import 'shopping_page.dart';

class AppRouting {
  static final _singleton = AppRouting._create();
  //Map<String, Widget Function(BuildContext)> get routes=>Routes().routes;
  AppRouting._create() {
    Routes().add('/menu', (ctx) => EntradaView());
    Routes().add('/shopping', (ctx) => ShoppingViewDemo());
  }
  factory AppRouting() => _singleton;
}
