part of 'counter_bloc.dart';

class BlocEvent {}

class IncrementCounter extends BlocEvent {}

class DecrementCounter extends BlocEvent {}

class PoswerCounter extends BlocEvent {
  final int powerValue;
  PoswerCounter(this.powerValue);
}
