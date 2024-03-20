import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<BlocEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounter>(
      (event, emit) {
        emit(state + 1);
      },
    );
    on<DecrementCounter>(
      (event, emit) {
        emit(state - 1);
      },
    );
    on<PoswerCounter>(
      (event, emit) {
        emit(pow(state, event.powerValue).toInt());
      },
    );
  }
}
