

import 'package:flutter_assignment2/bloc/areaofcircle_bloc.dart';
import 'package:flutter_assignment2/bloc/simpleinterest_bloc.dart';
import 'package:flutter_assignment2/bloc/student_bloc.dart';
import 'package:flutter_assignment2/cubit/dashboard_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
  _initCubit();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => SimpleinterestBloc());
  serviceLocator.registerLazySingleton(() => AreaofcircleBloc());
  serviceLocator.registerLazySingleton(() => StudentBloc());
}

void _initCubit() {
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
