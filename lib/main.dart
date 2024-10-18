// ignore_for_file: must_be_immutable
import 'package:belajar_bloc/cubit/counter/counter_cubit.dart';
import 'package:belajar_bloc/screen/CounterScreen/counter_screen.dart';
import 'package:belajar_bloc/screen/WelcomeScreen/welcome_screen.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (BuildContext context) => CounterCubit(),
        ),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) =>  const WelcomeScreen(),
          '/counter': (context) => const CounterScreen(),
        },
      ),
    );
  }
}
