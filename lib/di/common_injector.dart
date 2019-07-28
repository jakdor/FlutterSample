import 'package:inject/inject.dart';

import 'common_module.dart';
import 'package:flutter1/ui/app.dart';
import 'common_injector.inject.dart' as g;

@Injector(const [CommonModule])
abstract class CommonInjector {

  @provide
  App get app;

  static final create = g.CommonInjector$Injector.create;
}