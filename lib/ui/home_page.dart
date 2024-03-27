import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterInitial) {
            return _view(context, 0);
          }
          if (state is CounterValueUpdated) {
            return _view(context, state.counter);
          } else
            return Container();
        },
      ),
    );
  }
}

Widget _view(
  BuildContext context,
  int text,
) {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrease());
            },
            child: const Icon(Icons.add),
          ),
          Text(text.toString()),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecraese());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      )
    ],
  ));
}
