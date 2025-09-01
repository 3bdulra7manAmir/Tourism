import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/bloc_observer.dart';
import 'main_app.dart';

  void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  /// [Bloc Observer]
  Bloc.observer = const SimpleBlocObserver();
  
  //App Run
  runApp(const Tourism(),);
}