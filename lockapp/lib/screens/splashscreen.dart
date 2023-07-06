import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lockapp/screens/terms.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  hello() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      timer.cancel();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TermsandConditions()),
      );
    });
  }

  @override
  void initState() {
    hello();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6774FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quize",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 100),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Play Daily Challenges and win time For access your Favorite Apps",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ["Q", "U", "R", "N", "T"]
                  .map(
                    (e) => CustomPaint(
                      painter: HexagonPainter(),
                      child: Container(
                        child: SizedBox(
                          width: 50,
                          height: 40,
                          child: Center(
                            child: Container(
                              child: Text(
                                e,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ["U", "I", "Z", "R"]
                  .map(
                    (e) => CustomPaint(
                      painter: HexagonPainter(),
                      child: Container(
                        child: SizedBox(
                          width: 50,
                          height: 40,
                          child: Center(
                            child: Container(
                              child: Text(
                                e,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ["K", "N", "E"]
                  .map(
                    (e) => CustomPaint(
                      painter: HexagonPainter(),
                      child: Container(
                        child: SizedBox(
                          width: 50,
                          height: 40,
                          child: Center(
                            child: Container(
                              child: Text(
                                e,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final sideLength = size.width / 2;
    final height = size.height;
    final centerX = size.width / 2;

    path.moveTo(centerX + sideLength * 0.866, height / 2);
    path.lineTo(centerX + sideLength * 0.433, height);
    path.lineTo(centerX - sideLength * 0.433, height);
    path.lineTo(centerX - sideLength * 0.866, height / 2);
    path.lineTo(centerX - sideLength * 0.433, 0);
    path.lineTo(centerX + sideLength * 0.433, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class HexagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final path = HexagonClipper().getClip(size);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
