import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pigeon/Pigeon%20Tabs/explore.dart';
import 'package:pigeon/Pigeon%20Tabs/wedding_page.dart';
import 'package:pigeon/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'Widgets/responsiveness.dart';
import 'pages/login/login_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> tabs = [
    'EXPLORE',
    'WEDDING',
    'BIRTHDAY',
    'BABY & KIDS',
    'PARTIES',
    'GREETINGS',
    'FLYEAR',
    'BUSINESS',
    'OTHER',
    'CARDS'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          endDrawer: const Drawer(),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: AppBar(
              elevation: 0,
              leadingWidth: 250,
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GradientText(
                  'P I G E O N',
                  gradientType: GradientType.linear,
                  gradientDirection: GradientDirection.btt,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 30),
                  colors: const [
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.purple,
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.to(() => const LoginPage());
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
              bottom: PreferredSize(
                preferredSize: Size(MediaQuery.of(context).size.width,
                    50), // here the desired height
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: white,
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: const TextStyle(fontSize: 16),
                    tabs: [
                      for (int i = 0; i < tabs.length; i++) ...[
                        Tab(
                          text: tabs[i],
                        )
                      ]
                    ]),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(
                ResponsiveWidget.isSmallScreen(context) ? 5 : 15),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       '1000 Cards',
                //       style: TextStyle(
                //           color: white,
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     TextButton(
                //         onPressed: () {},
                //         child: Text(
                //           'Sort By',
                //           style: TextStyle(color: white),
                //         ))
                //   ],
                // ),
                Expanded(
                  child: TabBarView(children: [
                    WeddingPage(),
                    ExplorePage(),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
