import 'package:flutter/widgets.dart';

class SlideInTransition extends PageRouteBuilder {
  final Widget page;

  SlideInTransition({required this.page})
      : super(
          transitionDuration: Duration(milliseconds: 400),
          reverseTransitionDuration: Duration(milliseconds: 400),
          pageBuilder: (ctx, animation, secondAnimation) => page,
          transitionsBuilder: (ctx, animation, secondAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
