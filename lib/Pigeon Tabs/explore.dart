import 'package:flutter/material.dart';
import 'package:pigeon/constants/colors.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            children: [
              for (int i = 0; i < 20; i++) ...[
                Container(
                  margin: const EdgeInsets.all(10),
                  height:300,
                  width: 600,
                  color: white.withOpacity(.5),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
