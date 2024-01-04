import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animations/model/toggle_button_option.dart';
import 'package:animations/widget/toggle_button_single_required.dart';

class AnimatedIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedCrossFade"),
        ),
        backgroundColor: Colors.black87,
        body: Center(
          child: AnimatedIconExample(),
        ));
  }
}

class AnimatedIconExample extends StatefulWidget {
  @override
  _AnimatedIconExampleState createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward();
        });
      },
      icon: AnimatedIcon(
        progress: _animationController,
        icon: AnimatedIcons.menu_arrow,
        size: 50,
      ),
    );
  }
}