import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';
import '../utilities/themeColors.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
        statusBarColor: ThemeColors.greenLight));
    startTimer(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Align(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.45,
                child: Image.asset('assets/images/logo.jpg'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0, 0, 0, MediaQuery.of(context).size.height * 0.10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'By Zinon SoftWare',
                      style: TextStyle(
                        color: Color.fromARGB(255, 167, 166, 166),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startTimer(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.offAll(() => const HomeView()),
    );
  }
}
