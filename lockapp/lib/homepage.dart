import 'package:flutter/material.dart';
import 'package:lockapp/quiz.dart';
import 'dart:math' as math;

import 'package:lockapp/screens/mathquiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Color(0xff6774FF),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrDjKq2q_Xhw2qDp978g1ff0CzGw4pYcK8hg&usqp=CAU"),
                          ),
                        ],
                      ),
                      const Text(
                        "Elisia",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40,
                            width: 100,
                            child: const Center(
                              child: Text(
                                "10 Minutes",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.40),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40,
                            width: 100,
                            child: const Center(
                              child: Text(
                                "Level 1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -50,
                  top: 0,
                  child: SizedBox(
                    width: 130.0,
                    height: 130.0,
                    child: Transform.rotate(angle: 100, child: TriangleShape()),
                  ),
                ),
                Positioned(
                  right: -30,
                  top: 0,
                  child: SizedBox(
                    width: 130.0,
                    height: 130.0,
                    child: Transform.rotate(angle: 10, child: TriangleShape()),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  right: 10,
                  child: Transform.rotate(
                    angle: 140,
                    child: SizedBox(
                      height: 10,
                      width: 80,
                      child: ClipPath(
                          clipper: MyClipper(),
                          child: Container(
                            height: 10,
                            width: 80,
                            color: const Color(0xff6F8AFF).withOpacity(0.80),
                            child: const Text("abc"),
                          )),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(color: Colors.grey[500], fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [1, 2]
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const QuizPage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.70),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 30) / 2,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        e == 2
                                            ? Icon(
                                                Icons.timeline,
                                                size: 50,
                                                color: Colors.blueGrey.shade400,
                                              )
                                            : const Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 50,
                                              ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: e != 1
                                                  ? Colors.amber
                                                      .withOpacity(0.30)
                                                  : Colors.green
                                                      .withOpacity(0.30),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          height: 30,
                                          width: 60,
                                          child: Center(
                                            child: Text(
                                              e == 1 ? "*20%" : "*30%",
                                              style: TextStyle(
                                                  color: e != 1
                                                      ? Colors.amber
                                                      : Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          e == 1 ? "18/30" : "35 min",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 35,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            e != 1
                                                ? "Correct 6 questions and win upto 35 Minuts"
                                                : "To Continue The Last saved Game",
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Courses Quiz",
                    style: TextStyle(color: Colors.grey[500], fontSize: 22),
                  ),
                ],
              ),
            ),
            Column(
              children: [1, 2, 3]
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 20, right: 20),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: e.isEven
                                  ? Colors.amber.withOpacity(0.25)
                                  : Colors.green.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MathQuiz()),
                                  );
                                },
                                title: Text(
                                  e.isEven
                                      ? "Engish Language"
                                      : "Physics Transition",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                                subtitle: Text(
                                  e.isEven ? "get started" : "80% Archieved",
                                  style: TextStyle(
                                    color:
                                        e.isEven ? Colors.amber : Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                leading: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: e.isEven
                                              ? Colors.amber.withOpacity(0.30)
                                              : Colors.green.withOpacity(0.30),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.abc,
                                            color: e.isEven
                                                ? Colors.amber
                                                : Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 90, right: 20),
                                child: Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        e.isEven ? Colors.amber : Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({this.color = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

class TriangleShape extends StatelessWidget {
  const TriangleShape({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          TrianglePainter(color: const Color(0xff6F8AFF).withOpacity(0.80)),
      child: Container(),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var smallLineLength = size.width / 30;
    const smallLineHeight = 10;
    var path = Path();

    path.lineTo(0, size.height);
    for (int i = 1; i <= 20; i++) {
      if (i % 2 == 0) {
        path.lineTo(smallLineLength * i, size.height);
      } else {
        path.lineTo(smallLineLength * i, size.height - smallLineHeight);
      }
    }
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) => false;
}
