import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/button_bloc.dart';
class NewScreenNoBloc extends StatelessWidget {
  const NewScreenNoBloc({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen'),
      ),
      body: Column(
        children: [
          Text(name),
        ],
      ),
    );
  }
}
