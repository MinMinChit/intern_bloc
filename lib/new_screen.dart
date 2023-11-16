import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/button_bloc.dart';
class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen'),
      ),
      body: Column(
        children: [
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
              return Container(child: Text('no state'),);
            },
          ),
        ],
      ),
    );
  }
}
