import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'areaofcircle_event.dart';

class AreaofcircleBloc extends Bloc<AreaofcircleEvent, double> {
  AreaofcircleBloc() : super(0) {
    on<CalculateAreaEvent>((event, emit) {
      final area = ( pi * event.radius * event.radius);
      emit(area);
    });
  }
}
