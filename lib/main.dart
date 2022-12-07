import 'package:countertimer/timer-_cubit.dart';
import 'package:countertimer/timerstates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("BLOC_TIMER"),
        ),
        body: BlocBuilder<TimerCubit, TimerState>(
          builder: (context, state) {
            if (state is TimerInitial) {
              return Center(
                child: ElevatedButton(
                  onPressed: () =>
                      BlocProvider.of<TimerCubit>(context).startTimer(0),
                  child: Text("Start"),
                ),
              );
            }
            if (state is TimerProgress) {
              return Center(
                child: Text(
                  "${state.elapsed!}",
                  style: TextStyle(fontSize: 36),
                ),
              );
            }
            return Container();
           },
        ),
      ),
    );
  }
}
