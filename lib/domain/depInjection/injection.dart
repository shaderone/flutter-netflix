import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
// we can configure this for production mode, debuggin mode and so on
  $initGetIt(getIt, environment: Environment.prod);
}
