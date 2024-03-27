part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();
}


class CounterIncrease extends CounterEvent {
  @override
  List<Object?> get props => [];
}

class CounterDecraese extends CounterEvent {
  @override
  List<Object?> get props => [];
}
