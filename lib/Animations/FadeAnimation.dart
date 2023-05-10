import 'package:flutter/material.dart';
//import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatefulWidget {
  final Widget child1;
  FadeAnimation(this.child1);
  @override
  State<StatefulWidget> createState() => _Fade(this.child1);
}

class _Fade extends State<FadeAnimation> with TickerProviderStateMixin {
  final Widget child2;

  _Fade(this.child2);
  late AnimationController animation;
 // late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this, duration: Duration(seconds: 3),);
    //_fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.1).animate(animation);

    animation.addListener((){
      if(animation.isCompleted){
        animation.reverse();
      }else{
        animation.forward();
      }
    });
    animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: FadeTransition(
            opacity: animation,
            child: Container(
              child:child2
            ),
          ),
        ),
      );
  }
}