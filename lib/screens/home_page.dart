// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counter/bloc/counter_bloc.dart';
import 'package:counter/widgets/buttons_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter value is: ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return Text(
                    '0',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 30),
                  );
                } else if (state is CounterValueChanged) {
                  return Text(
                    state.counter.toString(),
                    style: TextStyle(color: Colors.blueGrey, fontSize: 30),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonsWidgets(),
    );
  }
}
