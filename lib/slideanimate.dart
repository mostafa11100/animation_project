import 'package:flutter/material.dart';

// class slide extends PageRouteBuilder {
//   final page;
//   slide({this.page})
//       : super(
//           pageBuilder: (context, animation, animationtwo) {
//             return page;
//           },
//           transitionsBuilder: (context, animation, animationtwo, child) {
//             Offset begain = Offset(0, 1);
//             //بتبداء من عند اليمين لان واحد معناها  محور اكس   وصفر معناها محور واي
//             var end = Offset(0, 0); //النهايه
//             Animatable<Offset> twen = Tween(begin: begain, end: end);

//             // Animation<Offset> offsetanimation =
//             //     animation.drive(twen); // نوع التنقل  او موع حركه الانيماشن

//             //   return SlideTransition(
//             //   position: offsetanimation,
//             //   child: child,
//             // );
//             var curves =
//                 CurvedAnimation(parent: animation, curve: Curves.elasticOut);//  نوع التنقل  او موع حركه الانيماشن سريعه او بطيئه

//             return SlideTransition(
//               position: twen.animate(curves),
//               child: child,
//             );
//           },
//           transitionDuration: Duration(milliseconds: 700),
//           barrierColor: const Color.fromARGB(255, 252, 4, 4),
//           barrierDismissible: false,
//         );
// }

// class scale extends PageRouteBuilder {
//   final page;
//   scale({this.page})
//       : super(
//           pageBuilder: (context, animation, animationtwo) {
//             return page;
//           },
//           transitionsBuilder: (context, animation, animationtwo, child) {
//             var begain = 0.0; //حجمه مثلا صفر

//             var end = 1.0; //النهايه حجمه مثلا واحد يعني بحجم الشاشه
//             var twen = Tween(begin: begain, end: end);
//             var curves = CurvedAnimation(
//                 parent: animation,
//                 curve: Curves
//                     .ease); //  نوع التنقل  او موع حركه الانيماشن سريعه او بطيئه

//             return ScaleTransition(
//               //بيكون صغير وبيكبر
//               alignment: Alignment.bottomLeft,
//               scale: twen.animate(curves),
//               child: child,
//             );
//           },
//           transitionDuration: Duration(milliseconds: 700),
//           barrierColor: const Color.fromARGB(255, 252, 4, 4),
//           barrierDismissible: false,
//         );
// }

// class routation extends PageRouteBuilder {
//   final page;
//   routation({this.page})
//       : super(
//           pageBuilder: (context, animation, animationtwo) {
//             return page;
//           },
//           transitionsBuilder: (context, animation, animationtwo, child) {
//             var begain = 0.0; //حجمه مثلا صفر

//             var end = 1.0; //النهايه حجمه مثلا واحد يعني بحجم الشاشه
//             var twen = Tween(begin: begain, end: end);
//             var curves = CurvedAnimation(
//                 parent: animation,
//                 curve: Curves
//                     .linear); //  نوع التنقل  او موع حركه الانيماشن سريعه او بطيئه

//             return RotationTransition(
//               //بيكون صغير وبيكبر
//               // alignment: Alignment.bottomLeft,
//               turns: twen.animate(curves),
//               child: child,
//             );
//           },
//           transitionDuration: Duration(milliseconds: 700),
//           barrierColor: const Color.fromARGB(255, 252, 4, 4),
//           barrierDismissible: false,
//         );
// }

class align extends PageRouteBuilder {
  final page;
  align({this.page})
      : super(
          pageBuilder: (context, animation, animationtwo) {
            return page;
          },
          transitionsBuilder: (context, animation, animationtwo, child) {
            return Align(
              child: SizeTransition(
                axis: Axis.horizontal       ,
                axisAlignment: -1.0,
                sizeFactor: animation,
                child: child,
              ),
            );
          },
          transitionDuration: Duration(milliseconds: 500),
          barrierColor: const Color.fromARGB(255, 252, 4, 4),
          barrierDismissible: false,
        );
}
