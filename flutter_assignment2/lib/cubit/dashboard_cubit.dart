
import 'package:flutter/material.dart';
import 'package:flutter_assignment2/bloc/areaofcircle_bloc.dart';
import 'package:flutter_assignment2/bloc/simpleinterest_bloc.dart';
import 'package:flutter_assignment2/bloc/student_bloc.dart';
import 'package:flutter_assignment2/view/area_circle_bloc_view.dart';
import 'package:flutter_assignment2/view/simple_interest_bloc_view.dart';
import 'package:flutter_assignment2/view/student_bloc_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
      this._simpleinterestBloc, this._areaofcircleBloc, this._studentBloc)
      : super(null);

  final SimpleinterestBloc _simpleinterestBloc;
  final AreaofcircleBloc _areaofcircleBloc;
  final StudentBloc _studentBloc;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofcircleBloc,
          child: AreaCircleBlocView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleinterestBloc,
          child: SimpleInterestBlocView(),
        ),
      ),
    );
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentBlocView(),
        ),
      ),
    );
  }
}
