// like import : mean "port of a file"
part of 'counter_bloc.dart';

// "immutable" mean all are final
@immutable
sealed class CounterEvent {}

// events is what happen when do this example when click on button
class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class ResetEvent extends CounterEvent {}
