import 'package:animation_course/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const splash());
}

class test_transform_animate extends StatefulWidget {
  const test_transform_animate({super.key});

  @override
  State<test_transform_animate> createState() => _test_transform_animateState();
}

class _test_transform_animateState extends State<test_transform_animate> {
  double x = 100;
  double color = 100;
  double angle = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: 400,
            color: Colors.blue,
            child: Stack(children: [
              animated_position(widt: x, color: angle),
            ]),
          ),
          const SizedBox(
            height: 100,
          ),
          Slider(
              min: 0,
              max: 500,
              value: angle,
              onChanged: (i) {
                setState(
                  () {
                    if (i + 1 < angle + 1) {
                      angle--;
                      x--;
                    } else {
                      x = i + 1;
                      angle = i + 1;
                    }
                  },
                );
              })
        ],
      ),
    ));
  }
}

class transform_scale extends StatelessWidget {
  const transform_scale({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      origin: Offset(
          0, 0), //  نطقه البدايه  او النقطه اللي من عنجها بيحصل الانيماشن
      //بيكبر ويصفر ع حسب براميتر السكال
      scale: 1.5,
      child: Container(
        height: 10,
        width: 10,
        color: Colors.red,
      ),
    );
  }
}

class transform_rotate extends StatelessWidget {
  const transform_rotate({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        // بيخليه يلف حولين نفسه  يعني يلف بزاويه ع حسب براميتر ال انجيل
        angle: 3.14,
        child: Container(
          height: 200,
          width: 100,
          color: Colors.red,
        ));
  }
}

class transform_flip extends StatelessWidget {
  const transform_flip({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
        flipX: true,
        flipY: false,
        child: Container(
          height: 200,
          width: 100,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black12,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              )
            ],
          ),
        ));
  }
}

class transform_translate extends StatelessWidget {
  const transform_translate({super.key, required this.x, required this.y});
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: Offset(x, y),
        child: Container(
            height: 200,
            width: 100,
            child: const Text(
              "hello",
              style: TextStyle(fontSize: 20),
            )));
  }
}

class transform_translate_ust extends StatelessWidget {
  const transform_translate_ust({super.key, required this.x, required this.y});
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.rotationX(1.0)
          ..rotateY(2.14)
          ..scale(2.0),
        child: Container(height: 200, width: 100, color: Colors.red));
  }
}

class crosfade extends StatelessWidget {
  const crosfade({super.key, required this.x});
  final bool x;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: Container(height: 200, width: 100, color: Colors.red),
      secondChild: Container(height: 200, width: 100, color: Colors.blue),
      crossFadeState: x ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(seconds: 1),
      firstCurve: Curves.ease,
      secondCurve: Curves.ease,
    );
  }
}

class animated_text extends StatelessWidget {
  animated_text(
      {super.key, required this.widt, required this.color, this.text});
  final widt;
  final text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
        child: Text("$text"),
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: widt),
        duration: Duration(seconds: 2));
  }
}

class animated_phusical extends StatelessWidget {
  animated_phusical({super.key, required this.widt, required this.color});
  final widt;

  Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedPhysicalModel(
        shape: BoxShape.rectangle,
        elevation: 10,
        color: color,
        shadowColor: Colors.black,
        duration: Duration(seconds: 1),
        child: Container(
          height: 100,
          width: 100,
        ));
  }
}

class animated_position extends StatelessWidget {
  animated_position({super.key, required this.widt, required this.color});
  final double widt;

  final color;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        top: widt,
        left: color,
        duration: const Duration(seconds: 1),
        child: Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ));
  }
}
