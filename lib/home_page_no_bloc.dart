import 'package:flutter/material.dart';
import 'package:intern_practise1/new_screen_no_bloc.dart';

class HomePageNoBloc extends StatefulWidget {
  const HomePageNoBloc({super.key});

  @override
  State<HomePageNoBloc> createState() => _HomePageNoBlocState();
}

class _HomePageNoBlocState extends State<HomePageNoBloc> {
  String buttonText = 'This is Red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Bloc Practice'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewScreenNoBloc(name: buttonText)));
        },
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Text(buttonText),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    buttonText = "This is Red";
                  });
                },
                child: Text('Red'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    buttonText = "This is Green";
                  });
                },
                child: Text('Green'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    buttonText = "This is Blue";
                  });

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
