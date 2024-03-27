part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {}

class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}

class CounterValueUpdated extends CounterState {
  final int counter;
  CounterValueUpdated(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
