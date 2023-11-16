import 'package:flutter/material.dart';
import 'package:intern_practise1/home_page.dart';
import 'package:intern_practise1/home_page_no_bloc.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
