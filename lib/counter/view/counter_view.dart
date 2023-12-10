import 'package:counter_app_using_bloc/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Counter App'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
          return Text(state.toString());
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncremented());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecremented());
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
