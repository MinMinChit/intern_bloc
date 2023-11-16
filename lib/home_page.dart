import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_practise1/bloc/button_bloc.dart';
import 'package:intern_practise1/new_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String buttonText = 'This is Red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Practice'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewScreen()));
        },
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          BlocBuilder<ButtonBloc, ButtonState>(
            builder: (BuildContext context, state) {
              if (state is RedState) {
                return Text('This is Red State');
              }
              if (state is GreenState) {
                return Text('This is Green State');
              }
              if (state is BlueState) {
                return Text('This is Blue State');
              }
              return Container(
                child: Text('no state'),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // setState(() {
                  //   buttonText = "This is Red";
                  // });
                  BlocProvider.of<ButtonBloc>(context).add(RedEvent());
                },
                child: Text('Red'),
              ),
              TextButton(
                onPressed: () {
                  // setState(() {
                  //   buttonText = "This is Green";
                  // });
                  BlocProvider.of<ButtonBloc>(context).add(GreenEvent());
                },
                child: Text('Green'),
              ),
              TextButton(
                onPressed: () {
                  // setState(() {
                  //   buttonText = "This is Blue";
                  // });
                  BlocProvider.of<ButtonBloc>(context).add(BlueEvent());
                },
                child: Text('Blue'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
