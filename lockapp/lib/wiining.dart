import 'package:flutter/material.dart';
import 'package:lockapp/homepage.dart';

class winningtime extends StatefulWidget {
  const winningtime({super.key});

  @override
  State<winningtime> createState() => _winningtimeState();
}

class _winningtimeState extends State<winningtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Congrats",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueGrey.shade900,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Text(
            "Time Extended by 2 Hours on the screen time , Play More",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
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
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
              child: Text(
                "OK",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
