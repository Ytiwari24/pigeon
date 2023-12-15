import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pigeon/Pigeon%20Tabs/explore.dart';
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
          // backgroundColor: white.withOpacity(.01),
          appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(100.0), // here the desired height
            child: AppBar(
              elevation: 0,
              // backgroundColor: transparentColor,
              leadingWidth: 250,
              // leading: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //         hintStyle: TextStyle(color: white),
              //         suffixIcon: IconButton(
              //             onPressed: () {},
              //             icon: Icon(
              //               Icons.search,
              //               color: white,
              //             )),
              //         hintText: 'Search',
              //         border: OutlineInputBorder(
              //             borderSide: BorderSide(color: white))),
              //   ),
              // ),
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
                preferredSize:
                    const Size.fromHeight(50.0), // here the desired height
                child: Center(
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
          ),
          body: Padding(
            padding: EdgeInsets.all(
                ResponsiveWidget.isSmallScreen(context) ? 5 : 15),
            child: Column(
              children: [
                // SizedBox(
                //     height: 100,
                //     child: Center(
                //         child: Text(
                //       'Explore ALL Cards',
                //       style: TextStyle(
                //           color: white,
                //           fontSize: 25,
                //           fontWeight: FontWeight.bold),
                //     ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '1000 Cards',
                      style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sort By',
                          style: TextStyle(color: white),
                        ))
                  ],
                ),
                const Expanded(
                  child: TabBarView(children: [ExplorePage()]),
                ),
              ],
            ),
          )),
    );
  }
}
