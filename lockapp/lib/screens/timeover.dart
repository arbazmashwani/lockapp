import 'package:flutter/material.dart';
import 'package:lockapp/homepage.dart';
import 'package:lockapp/screens/mathquiz.dart';

class outtime extends StatefulWidget {
  const outtime({super.key});

  @override
  State<outtime> createState() => _outtimeState();
}

class _outtimeState extends State<outtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 500,
              decoration: const BoxDecoration(
                  color: Color(0xff6774FF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 200,
                      ),
                    ],
                  ),
                  Text(
                    "Alert",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "You are out of time and restricted to use any other app on this device, Guess right or Play quiz to earn more time to use",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: -50,
              top: 0,
              child: SizedBox(
                width: 130.0,
                height: 130.0,
                child:
                    Transform.rotate(angle: 100, child: const TriangleShape()),
              ),
            ),
            Positioned(
              right: -30,
              top: 0,
              child: SizedBox(
                width: 130.0,
                height: 130.0,
                child:
                    Transform.rotate(angle: 10, child: const TriangleShape()),
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
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MathQuiz()),
                );
              },
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff6774FF),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                      child: Text(
                    "Play Quiz",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                      child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ))
      ],
    ));
  }
}
