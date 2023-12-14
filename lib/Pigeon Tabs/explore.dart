import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pigeon/constants/colors.dart';
import 'package:pigeon/widgets/custom_widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Wrap(
              // alignment: WrapAlignment.center,
              runSpacing: 20,
              spacing: 20,
              children: [
                for (int i = 0; i < 20; i++) ...[
                  Card(
                    elevation: 20,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.orange, Colors.purple]),
                          color: white.withOpacity(.5),
                          border: Border.all(color: black, width: 2)),
                      height: 300,
                      width: 200,
                      child: Center(
                          child: Text(
                        'Pravind Bhardwaj',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ]
              ],
            ),
          ),
          sizedBoxHeight(20),
          Text(
            'Unlock New Cards',
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
