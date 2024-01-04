import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animations/model/toggle_button_option.dart';
import 'package:animations/widget/toggle_button_single_required.dart';

class TweenAnimationBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedCrossFade"),
        ),
        backgroundColor: Colors.black87,
        body: Center(
          child: TweenAnimationExample(),
        ));
  }
}

class TweenAnimationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 3),
      tween: Tween(begin: 100.0, end: 300.0),
      curve: Curves.bounceOut,
      builder: (context, value, child) {
        return Container(
          height: value as double,
          width: value,
          color: Colors.blue,
          child: Center(child: child),
        );
      },
      child: Text('In der Mitte'),
    );
  }
}