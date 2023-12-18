import 'package:animation_course/page1.dart';
import 'package:animation_course/slideanimate.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 2, 128, 128),
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(align(page: const page1()));
                },
                child: Text("next page"))),
      ),
    );
  }
}
