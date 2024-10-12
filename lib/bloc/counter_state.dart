// like import : mean "port of a file"
part of 'counter_bloc.dart';

// "immutable" mean all are final
@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

// state: state of certain value, or variable will changes
class CounterValueChanged extends CounterState {
  final int counter;
  CounterValueChanged({required this.counter});
}
