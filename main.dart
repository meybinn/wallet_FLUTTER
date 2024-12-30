import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_1/widgets/button.dart';
import 'package:new_1/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // appBar 없애기 & 위젯 등의 변수들은 Scaffold에 마우스 올려서 확인
      home: Scaffold(
        // Color != Colors
        // Colors.red.shade800 = 색의 채도 설정
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            // 바깥 여백
            // all, only, stmmetric 중 사용
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              // chioren이라는 List 필요
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  // 위에 공백
                  height: 80,
                ),
                Row(
                  // body의 header라고 이해
                  mainAxisAlignment: MainAxisAlignment.end, // 주축의 끝에 위치
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Hello User',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            )),
                        Text('Welcome back !!',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                    // Container(
                    //   // 버튼 명령어
                    //   decoration: BoxDecoration(
                    //     color: ,
                    //     borderRadius: BorderRadius.circular(45),
                    //   ), // 버튼 디자인(안에 색상 넣기)
                    //   child: const Padding(
                    //     padding: EdgeInsets.symmetric(
                    //       vertical: 20,
                    //       horizontal: 50,
                    //     ),
                    //     child: Text('Transfer',
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //         )), // 텍스트
                    //   ),
                    // ),
                    // Container(
                    //   // 버튼 명령어
                    //   decoration: BoxDecoration(
                    //     color: const Color(0xFF1F2123),
                    //     borderRadius: BorderRadius.circular(45),
                    //   ), // 버튼 디자인(안에 색상 넣기)
                    //   child: const Padding(
                    //     padding: EdgeInsets.symmetric(
                    //       vertical: 20,
                    //       horizontal: 50,
                    //     ),
                    //     child: Text('Request',
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           color: Colors.white,
                    //         )), // 텍스트
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // 가능한 멀리 떨어트려 놓기
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  offset: 0,
                ),
                // Transform.translate(
                //   // 비트코인 card가 위 euro 카드를 살짝 덮도록 ->  비트코인 card을 위로 살짝 움직임
                //   offset: const Offset(0, -20),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  offset: -20,
                ),
                // ),
                // Transform.translate(
                // 비트코인 card가 위 euro 카드를 살짝 덮도록 ->  비트코인 card을 위로 살짝 움직임
                // offset: const Offset(0, -40),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '485',
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  offset: -40,
                ),
                // ),
                //
                // Container(
                //   clipBehavior: Clip.hardEdge, // OVERFLOW된 부분을 자르기 위해
                //   decoration: BoxDecoration(
                //     color: const Color(0xFF1F2123),
                //     borderRadius: BorderRadius.circular(25),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(20)
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       // 부모 Row
                //       children: [
                //         Column(
                //           // Column inside Row
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             const Text(
                //               'EURO',
                //               style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 32,
                //                 fontWeight: FontWeight.w600,
                //               ),
                //             ),
                //             const SizedBox(
                //               height: 10,
                //             ),
                //             Row(
                //               // 자식 Row
                //               children: [
                //                 const Text(
                //                   '6 428',
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //                 const SizedBox(
                //                   width: 5,
                //                 ),
                //                 Text(
                //                   'EUR',
                //                   style: TextStyle(
                //                     color: Colors.white.withOpacity(0.8),
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),

                //         // Transform = 화면 조정
                //         Transform.scale(
                //           // 아이콘의 크기 변경을 위해
                //           scale: 2.2,
                //           child: Transform.translate(
                //             // 아이콘의 x,y좌표 위치 변경을 위해
                //             offset: const Offset(-5, 12), // 위젯을 이용해 아이콘을 움직임
                //             child: const Icon(
                //               // 아이콘
                //               Icons.euro_rounded,
                //               color: Colors.white,
                //               size: 88,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
