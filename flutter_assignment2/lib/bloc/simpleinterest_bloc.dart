
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simpleinterest_event.dart';

class SimpleinterestBloc extends Bloc<SimpleinterestEvent, double> {
  SimpleinterestBloc() : super(0) {
    on<CalculateInterestEvent>((event, emit) {
      final interest = (event.principal * event.time * event.rate )/100;
      emit(interest);
    });
  }
}
