import 'package:flutter/material.dart';

import 'package:flutter1/di/common_module.dart';
import 'package:flutter1/di/common_injector.dart';

void main() async {
  var container = await CommonInjector.create(CommonModule());
  runApp(container.app);
}
