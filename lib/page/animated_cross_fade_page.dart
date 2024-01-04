import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animations/model/toggle_button_option.dart';
import 'package:animations/widget/toggle_button_single_required.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  @override
  AnimatedContainerPageState createState() => AnimatedContainerPageState();
}

class AnimatedContainerPageState extends State<AnimatedCrossFadePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedCrossFade"),
        ),
        backgroundColor: Colors.black87,
        body: Center(
          child: AnimatedCrossFadeExample(),
        ));
  }
}

class AnimatedCrossFadeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 4)),
      builder: (context, snapshot) {
        return AnimatedCrossFade(
          firstChild: Center(child: CircularProgressIndicator()),
          secondChild: Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          crossFadeState: snapshot.connectionState != ConnectionState.done
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 400),
        );
      },
    );
  }
}
