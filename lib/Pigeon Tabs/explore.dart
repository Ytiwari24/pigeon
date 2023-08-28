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
                SizedBox(width:ResponsiveWidget.isSmallScreen(context)?180: 300,height: 400,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(ResponsiveWidget.isSmallScreen(context)?10:20),
                        height:300,
                        width:ResponsiveWidget.isSmallScreen(context)?180: 200,
                        color: white.withOpacity(.5),
                    ),
                    Text(
                          'Card Name',
                          style: TextStyle(color: white,fontSize: 18,fontWeight: FontWeight.w500),
                        ),Text(
                          'Price',
                          style: TextStyle(color: white),
                        )
                    ],
                  ),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
