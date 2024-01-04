import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lottie Page"),
        ),
        backgroundColor: Colors.black87,
        body: Center(
          child: LottiePageWdg(),
        ));
  }
}


class LottiePageWdg extends StatefulWidget {
  @override
  _LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePageWdg> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset(
          'assets/lottie_file.json',
          repeat: true,
          reverse: false,
          animate: true,
        ),
      );
  }
}