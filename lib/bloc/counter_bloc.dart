import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrease>((event, emit) {
      // TODO: implement event handler
      counter += 1;
      emit(CounterValueUpdated(counter));
    });
    on<CounterDecraese>((event, emit) {
      counter -= 1;
      emit(CounterValueUpdated(counter));
    });
  }
}
