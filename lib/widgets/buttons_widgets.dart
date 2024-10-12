// ignore_for_file: prefer_const_constructors

import 'package:counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          child: Icon(Icons.add),
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {
            // BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
            context.read<CounterBloc>().add(DecrementEvent());
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
