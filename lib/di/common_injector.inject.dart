import 'common_injector.dart' as _i1;
import 'dart:async' as _i2;
import 'common_module.dart' as _i3;
import '../ui/app.dart' as _i4;

class CommonInjector$Injector implements _i1.CommonInjector {
  CommonInjector$Injector._();

  static _i2.Future<_i1.CommonInjector> create(_i3.CommonModule _) async {
    final injector = CommonInjector$Injector._();

    return injector;
  }

  _i4.App _createApp() => _i4.App();
  @override
  _i4.App get app => _createApp();
}
