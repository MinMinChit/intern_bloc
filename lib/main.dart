import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_practise1/bloc/button_bloc.dart';
import 'package:intern_practise1/home_page.dart';
import 'package:intern_practise1/home_page_no_bloc.dart';
import 'package:intern_practise1/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> ButtonBloc()),
        ],
        child: MaterialApp(
          home: Screen1(),
        ));
  }
}
