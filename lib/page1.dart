import 'package:animation_course/page2.dart';
import 'package:animation_course/slideanimate.dart';
import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(align(page: const page2()));
                },
                child: const Text("next page"))),
      ),
    );
  }
}
