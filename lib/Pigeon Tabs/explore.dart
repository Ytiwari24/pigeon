import 'package:flutter/material.dart';
import 'package:pigeon/constants/colors.dart';
import 'package:pigeon/widgets/responsiveness.dart';

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
                  height: 300,
                  width: 200,
                  color: white.withOpacity(.5),
                  child: Center(
                      child: Text(
                    '${i + 1}',
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  )),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
