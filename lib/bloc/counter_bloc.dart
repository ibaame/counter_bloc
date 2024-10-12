import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// Bloc: Takes a Stream of Events as input and transforms them into a Stream of States as output.
// event as input
// state as output
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    int counter = 0;
    on<CounterEvent>((event, emit) {
      // event is all counter event
      // emit as setState: pass changes to CounterState
      if (event is IncrementEvent) {
        counter += 1;
        emit(CounterValueChanged(counter: counter));
      } else if (event is DecrementEvent) {
        counter -= 1;
        emit(CounterValueChanged(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChanged(counter: counter));
      }
    });
  }
}
