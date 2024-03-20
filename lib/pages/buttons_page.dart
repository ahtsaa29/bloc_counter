import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(IncrementCounter());
                },
                child: const Text("Add Counter")),
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(DecrementCounter());
                },
                child: const Text("Subtract Counter")),
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(PoswerCounter(2));
                },
                child: const Text("Square Counter")),
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(PoswerCounter(3));
                },
                child: const Text("Cube Counter")),
          ],
        ),
      ),
    );
  }
}
