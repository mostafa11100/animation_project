import 'package:animation_course/main.dart';
import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: splashscrean());
  }
}

class splashscrean extends StatefulWidget {
  const splashscrean({super.key});

  @override
  State<splashscrean> createState() => _splashscreanState();
}

class _splashscreanState extends State<splashscrean> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 5, 70),
        body: Stack(
          alignment: Alignment.center,
          children: [
            containeranimat(),
            animatedcustomCotrol(
              se: 500,
              m: "m",
            ),
            animatedcustomCotrol(
              se: 600,
              m: "o",
            ),
            animatedcustomCotrol(
              se: 700,
              m: "s",
            ),
            animatedcustomCotrol(
              se: 800,
              m: "t",
            ),
            animatedcustomCotrol(
              se: 900,
              m: "a",
            ),
            animatedcustomCotrol(
              se: 1000,
              m: "f",
            ),
            animatedcustomCotrol(
              se: 1100,
              m: "a",
            ),
            opacityAnimation()
          ],
        ));
  }
}

// ignore: camel_case_types
class animatedcustomCotrol extends StatefulWidget {
  const animatedcustomCotrol({super.key, this.m, required this.se});
  final m;
  final int se;
  @override
  State<animatedcustomCotrol> createState() => _animatedcustomCotrolState();
}

class _animatedcustomCotrolState extends State<animatedcustomCotrol>
    with SingleTickerProviderStateMixin {
  double x = 0.0;
  AnimationController? _controller;
  Animation? _animation;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.se));
    _animation =
        (Tween(begin: 0.0, end: (683.0 / 2) - 115).animate(_controller!))
          ..addListener(() {
            setState(() {
              x = _animation!.value * 1.0;
            });
          });
    _controller!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        bottom: x,
        duration: const Duration(seconds: 1),
        child: animated_text(
          text: "${widget.m}",
          widt: x / 11,
          color: Colors.black,
        ));
  }
}

class containeranimat extends StatefulWidget {
  const containeranimat({super.key});

  @override
  State<containeranimat> createState() => _containeranimatState();
}

class _containeranimatState extends State<containeranimat>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  double x = 0.0;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 683.0 / 2).animate(_controller!)
      ..addListener(() {
        setState(() {
          x = _animation!.value * 1.0;
        });
      });
    _controller!.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print((MediaQuery.of(context).size.width / 2));
    return AnimatedPositioned(
        // left: (MediaQuery.of(context).size.width / 2),
        // right: (MediaQuery.of(context).size.width / 2) - 50,
        top: x,
        duration: const Duration(seconds: 1),
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          height: x / 3,
          width: x / 3,
          color: Colors.red,
        ));
  }
}

class opacityAnimation extends StatefulWidget {
  const opacityAnimation({super.key});

  @override
  State<opacityAnimation> createState() => _opacityAnimationState();
}

class _opacityAnimationState extends State<opacityAnimation>
    with SingleTickerProviderStateMixin {
  double x = 0.0;
  AnimationController? _controller;
  Animation? _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller!)
      ..addListener(() {
        setState(() {
          x = _animation!.value;
        });
      });
    _controller!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: 1 - x,
        duration: Duration(seconds: 1),
        child: Container(
          height: 100,
          width: 100,
          color: const Color.fromARGB(255, 245, 243, 243),
        ),
      ),
    );
  }
}
