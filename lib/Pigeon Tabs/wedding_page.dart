import 'package:flutter/material.dart';
import 'package:pigeon/constants/colors.dart';

class WeddingPage extends StatelessWidget {
  WeddingPage({super.key});
  final List<String> cards = [
    'assets/one.jpg',
    'assets/card.png',
    'assets/b.png',
    'assets/card.png',
    'assets/one.jpg',
    'assets/card.png',
    'assets/b.png',
    'assets/one.jpg',
    'assets/card.png',
    'assets/b.png',
    'assets/one.jpg',
    'assets/card.png',
    'assets/b.png',
    'assets/one.jpg',
    'assets/card.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // for (int i = 0; i < 5; i++) ...[
        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.5,
            decoration: BoxDecoration(
                color: black.withOpacity(.1), border: Border.all(color: black)),
            child: GridView.builder(
                itemCount: cards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .6,
                    crossAxisCount:
                        MediaQuery.of(context).size.width < 400 ? 2 : 4),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('${cards[index]}'),
                            fit: BoxFit.cover),
                        color: black.withOpacity(.1),
                        border: Border.all(color: white.withOpacity(.4))),
                  );
                })

            //  Center(
            //     child: customText('${i + 1}', 30, FontWeight.bold, black)),
            ),
        // Divider(
        //   color: black,
        // )
      ]
          // Center(
          //   child: Wrap(
          //     // alignment: WrapAlignment.center,
          //     runSpacing: 20,
          //     spacing: 20,
          //     children: [
          //       for (int i = 0; i < 20; i++) ...[
          //         Card(
          //           elevation: 20,
          //           child: Container(
          //             margin: const EdgeInsets.all(0),
          //             decoration: BoxDecoration(
          //               gradient: const LinearGradient(
          //                   colors: [Colors.orange, Colors.purple]),
          //               color: white.withOpacity(.5),
          //               border: GradientBoxBorder(
          //                 gradient: LinearGradient(
          //                     begin: Alignment.topCenter,
          //                     end: Alignment.bottomCenter,
          //                     colors: [black, white, black]),
          //                 width: 4,
          //               ),
          //             ),
          //             height: 300,
          //             width: 200,
          //             child: Center(
          //                 child: Text(
          //               'Pravind Bhardwaj',
          //               textAlign: TextAlign.center,
          //               style: GoogleFonts.poppins(
          //                   color: white,
          //                   fontSize: 25,
          //                   fontWeight: FontWeight.bold),
          //             )),
          //           ),
          //         ),
          //       ]
          //     ],
          //   ),
          // ),
          // sizedBoxHeight(20),
          // Text(
          //   'Unlock New Cards',
          //   style: TextStyle(
          //       fontSize: 20, color: white, fontWeight: FontWeight.bold),
          // ),
          // Container(
          //   color: black,
          //   height: 600,
          //   child: Center(
          //     child: ListView(
          //       shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       // alignment: WrapAlignment.center,
          //       // runSpacing: 20,
          //       // spacing: 20,
          //       children: [
          //         for (int i = 0; i < 10; i++) ...[
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 20),
          //             child: Card(
          //               elevation: 20,
          //               child: Container(
          //                 margin: const EdgeInsets.all(0),
          //                 decoration: BoxDecoration(
          //                     gradient: const LinearGradient(
          //                         colors: [Colors.orange, Colors.purple]),
          //                     color: white.withOpacity(.5),
          //                     border: Border.all(color: black, width: 2)),
          //                 height: 300,
          //                 width: 500,
          //                 child: Center(
          //                     child: Text(
          //                   'Pravind Bhardwaj',
          //                   textAlign: TextAlign.center,
          //                   style: GoogleFonts.poppins(
          //                       color: white,
          //                       fontSize: 25,
          //                       fontWeight: FontWeight.bold),
          //                 )),
          //               ),
          //             ),
          //           ),
          //         ]
          //       ],
          //     ),
          //   ),
          // ),
          // sizedBoxHeight(20),
          // ],
          ),
    );
  }
}
