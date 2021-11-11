import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(47, 205, 255, 1),
            leading: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.refresh_rounded,
                color: Colors.black,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 40,
              )
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(47, 207, 255, 1),
            ),
            child: Stack(
              children: [
                Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 60,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                  18,
                                ))),
                        child: const Center(
                            child: Text("Junk Caches",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2,
                                )))),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              28,
                            )),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 28,
                          right: 28,
                          top: 72,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 18,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Background Apps",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 14,
                                            ),
                                            Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color:
                                                  Colors.grey.withOpacity(0.7),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10,
                                                  )),
                                              child: const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 1,
                                                    right: 10,
                                                  ),
                                                  child: Text("15"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "580 MB",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      color: Colors.blueAccent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        6,
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              //item 2
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 18,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "App Junk Files",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 14,
                                            ),
                                            Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color:
                                                  Colors.grey.withOpacity(0.7),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10,
                                                  )),
                                              child: const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 1,
                                                    right: 10,
                                                  ),
                                                  child: Text("5"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "90 MB",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      color: Colors.blueGrey,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        6,
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              //item 3
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "App Caches",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 14,
                                            ),
                                            Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color:
                                                  Colors.grey.withOpacity(0.7),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10,
                                                  )),
                                              child: const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 1,
                                                    right: 10,
                                                  ),
                                                  child: Text("16"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "990 MB",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      color: Colors.black54,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        6,
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: const [
                                  SizedBox(
                                    height: 53,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
                //Ist allignment


                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 28, right: 28),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(47, 207, 255, 1),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: const Center(
                                child: Text(
                                  "CleanUp will not affect normal use",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color:
                              Color.fromRGBO(47, 207, 255, 1).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.delete_forever_outlined,
                                color: Color.fromRGBO(3, 162, 209, 1),
                              ),
                              Text("CleanUp 1.31 GB",
                                  style: TextStyle(
                                      color: Color.fromRGBO(3, 162, 209, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}