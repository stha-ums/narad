import 'package:flutter/material.dart';
import 'package:narad/config/log/logger.dart';
import 'package:narad/config/service_locator/service_locator.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/app.dart';

void main() => configAndRunApp();

/// Configure and run the app.
Future<void> configAndRunApp() async {
  /*
  Add all the configurations here 
  that needed to be done before app initialze
  */

  WidgetsFlutterBinding.ensureInitialized();

  // this will remove # from url of the app in web
  setPathUrlStrategy();

  // initialize the getit service locator
  await initServiceLocator();

  // setup logging
  initLogging();

  //start app
  runApp(App());
}
