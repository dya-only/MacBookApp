import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const M2Pro14(title: 'M2 Mac Book Pro'),
    );
  }
}

class M2Pro14 extends StatefulWidget {
  const M2Pro14({super.key, required this.title});

  final String title;

  @override
  State<M2Pro14> createState() => _MyHomePageState();
}

String colorStatus = "스페이스 그레이";

class _MyHomePageState extends State<M2Pro14> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('rebuild');
    }

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 350,
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('images/m2pro14.jpg'),
                      ),
                    ),

                    // const Text(
                    //   'M2 Mac Book Pro 14',
                    //   style:
                    //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                      child: Text(
                        colorStatus,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.all(10),
                            width: 40,
                            height: 40,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    colorStatus = '스페이스 그레이';
                                  });
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 141, 141, 141),
                                ),
                                child: const Text(''),
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.all(10),
                            width: 40,
                            height: 40,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    colorStatus = '실버';
                                  });
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 214, 214, 214),
                                ),
                                child: const Text(''),
                              ),
                            )),
                      ],
                    ),

                    SizedBox(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                            child: const Text(
                              '10코어 CPU',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                            child: const Text(
                              '16코어 GPU',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 140, 0),
                            child: const Text(
                              '16GB 통합 메모리',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                            child: const Text(
                              '512GB SSD 저장 장치¹',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                            child: const Text(
                              '16코어 Neural Engine\n35.9cm Liquid Retina XDR 디스플레이²\nThunderbolt 4 포트 3개, HDMI 포트, SDXC 카드 슬롯, 헤드폰 잭, MagSafe 3 포트\nTouch ID 탑재형 Magic Keyboard\nForce Touch 트랙패드\n67W USB-C 전원 어댑터',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 30, 160, 30),
                            child: const Text(
                              '₩2,790,000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            width: 500,
                            height: 50,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff0071e3),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '선택',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
