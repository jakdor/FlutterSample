import 'common_injector.dart' as _i1;
import 'common_module.dart' as _i2;
import '../common/network/service/stack_service.dart' as _i3;
import 'dart:async' as _i4;
import '../ui/app.dart' as _i5;
import '../common/bloc/stack_questions_bloc.dart' as _i6;
import '../common/repository/stack_questions_repository.dart' as _i7;

class CommonInjector$Injector implements _i1.CommonInjector {
  CommonInjector$Injector._(this._commonModule);

  final _i2.CommonModule _commonModule;

  _i3.StackService _singletonStackService;

  static _i4.Future<_i1.CommonInjector> create(
      _i2.CommonModule commonModule) async {
    final injector = CommonInjector$Injector._(commonModule);

    return injector;
  }

  _i5.App _createApp() => _i5.App(_createStackQuestionsBloc());
  _i6.StackQuestionsBloc _createStackQuestionsBloc() =>
      _commonModule.stackQuestionsBloc(_createStackQuestionsRepository());
  _i7.StackQuestionsRepository _createStackQuestionsRepository() =>
      _commonModule.stackQuestionsRepository(_createStackService());
  _i3.StackService _createStackService() =>
      _singletonStackService ??= _commonModule.stackService();
  @override
  _i5.App get app => _createApp();
}
