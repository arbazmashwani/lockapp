import 'package:flutter/material.dart';
import 'package:lockapp/wiining.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentindex = 0;
  int totalint = 8;
  int currentint = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueGrey.shade900,
          child: IconButton(
            onPressed: () {
              if (currentint != totalint) {
                setState(() {
                  currentint++;
                });
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const winningtime()),
                );
              }
            },
            icon: const Icon(
              Icons.done,
              color: Colors.white,
            ),
          )),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 0,
                        ),
                        child: Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width - 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.king_bed,
                        color: Colors.amber,
                      ),
                      Text(
                        "$currentint/8",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "what is the Scientific Formula of H2o?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  int newindex = index + 1;
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 12),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentindex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: index == currentindex
                                ? const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff6774FF),
                                      Color(0xffDD40C0),
                                    ],
                                  )
                                : null,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        height: 70,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              quizlist[currentint],
                              style: TextStyle(
                                  color: index == currentindex
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: CircleAvatar(
                              backgroundColor:
                                  const Color(0xff6F8AFF).withOpacity(0.50),
                              radius: 30,
                              child: Text(
                                quizlist2[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  List<String> quizlist = [
    "H20",
    "Cricket",
    "World",
    "Mobile",
    "Asia",
    "football",
    "Hockey",
    "Brazil",
    "Latin A"
  ];

  List<String> quizlist2 = ["A", "B", "C", "D"];
}
