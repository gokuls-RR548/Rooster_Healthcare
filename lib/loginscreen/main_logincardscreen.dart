import 'dart:math';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'registerscreen.dart';

class LoginCardScreen extends StatefulWidget {
  @override
  _LoginCardScreenState createState() => _LoginCardScreenState();
}

class _LoginCardScreenState extends State<LoginCardScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _cardController;
  Animation _cardAnimation;

  @override
  void initState() {
    super.initState();
    _cardController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _cardAnimation = Tween(begin: 0.0, end: pi).animate(_cardController);
  }

  @override
  void dispose() {
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _cardController,
          builder: (context, child) {
            return Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/log2.png',
                  fit: BoxFit.fill,
                  width: 500,
                  height: 1000,
                 ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform(
                            origin:
                                Offset((width * 0.92) / 2, (height * 0.40) / 2),
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..rotateY(_cardAnimation.value),
                            child: Opacity(
                              opacity: 0.7,
                              child: Card(
                                elevation: 10,
                                child: _cardAnimation.value < pi / 2
                                    ? LoginScreen()
                                    : RegisterScreen(
                                        cardController: _cardController,
                                      ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}