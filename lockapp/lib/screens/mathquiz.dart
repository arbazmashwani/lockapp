import 'package:flutter/material.dart';
import 'package:lockapp/homepage.dart';

class MathQuiz extends StatefulWidget {
  const MathQuiz({super.key});

  @override
  State<MathQuiz> createState() => _MathQuizState();
}

class _MathQuizState extends State<MathQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 410,
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
                        Text(
                          "Math",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [38, 24, 17, 12]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child: Text(e.toString()),
                                    ),
                                  ),
                                ))
                            .toList()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [14, 7, 5]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child: Text(e.toString()),
                                    ),
                                  ),
                                ))
                            .toList()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [7, 2]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child: Text(e.toString()),
                                    ),
                                  ),
                                ))
                            .toList()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: ["X"]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 50,
                                    width: 50,
                                    child: Center(
                                      child: Text(
                                        e.toString(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList())
                  ],
                ),
              ),
              Positioned(
                left: -50,
                top: 0,
                child: SizedBox(
                  width: 130.0,
                  height: 130.0,
                  child: Transform.rotate(
                      angle: 100, child: const TriangleShape()),
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
          const SizedBox(
            height: 10,
          ),
          const Text(
            "What is the value of X",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [5, 10]
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: e == 5
                                  ? Colors.green
                                  : Colors.grey.withOpacity(0.20),
                              borderRadius: BorderRadius.circular(20)),
                          height: 50,
                          width: 130,
                          child: Center(
                            child: Text(
                              e.toString(),
                              style: TextStyle(
                                  color: e == 5 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ))
                  .toList()),
          const SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [14, 9]
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: e == 5
                                  ? Colors.green
                                  : Colors.grey.withOpacity(0.20),
                              borderRadius: BorderRadius.circular(20)),
                          height: 50,
                          width: 130,
                          child: Center(
                            child: Text(
                              e.toString(),
                              style: TextStyle(
                                  color: e == 5 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ))
                  .toList()),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color(0xff6774FF),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                    child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
          )
        ],
      ),
    );
  }
}
