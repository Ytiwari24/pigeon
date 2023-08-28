import 'package:flutter/material.dart';
import 'package:pigeon/Pigeon%20Tabs/explore.dart';
import 'package:pigeon/constants/colors.dart';

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
          // backgroundColor: white.withOpacity(.01),
          appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(100.0), // here the desired height
            child: AppBar(
              elevation: 0,
              backgroundColor: transparentColor,
              leadingWidth: 250,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: white,
                          )),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: white))),
                ),
              ),
              centerTitle: true,
              title: const Text('Pigeon'),
              actions: [
                TextButton(
                    onPressed: () {},
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
          body: const Column(
            children: [
              Expanded(
                child: TabBarView(children: [
                  ExplorePage()
                ]),
              ),
            ],
          )),
    );
  }
}
