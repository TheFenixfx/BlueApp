import 'package:flutter/material.dart';

class FadeInOutAnimation extends StatefulWidget {
  @override
  _FadeInOutAnimationState createState() => _FadeInOutAnimationState();
}

class _FadeInOutAnimationState extends State<FadeInOutAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    )..addListener(() => setState(() {}));

    animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return 
      FadeTransition(
          opacity: animation,
          child: Image.asset('assets/images/bgrdwolf.png')
          );
  }
}