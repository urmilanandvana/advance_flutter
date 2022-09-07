import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore/android_app/apps_page.dart';
import 'package:playstore/android_app/books_page.dart';
import 'package:playstore/android_app/games_page.dart';

import 'package:playstore/android_app/movie_page.dart';
import 'package:playstore/ios_app/apps_ios.dart';
import 'package:playstore/ios_app/games_ios_page.dart';
import 'package:playstore/ios_app/serch_ios.dart';
import 'package:playstore/ios_app/today_page.dart';
import 'package:playstore/ios_app/update.dart';

import '../global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int initStepperIndex = 0;
  late TabController tabController;

  PageController pageController = PageController();

  List tabs = [
    const TodayIos(),
    const GameIos(),
    const AppsIos(),
    const UpdateIos(),
    const SearchIos(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    if ((Global.isIOS == false)) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
                value: Global.isIOS,
                onChanged: (val) {
                  setState(() {
                    Global.isIOS = val;
                  });
                }),
          ],
          bottom: TabBar(
            labelColor: const Color(0xff2b579a),
            unselectedLabelColor: Colors.black,
            controller: tabController,
            onTap: (val) {
              setState(() {
                pageController.animateToPage(
                  val,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              });
            },
            tabs: const [
              Tab(text: "For you"),
              Tab(text: "Top charts"),
              Tab(text: "Categories"),
              Tab(text: "Editor's choice"),
            ],
          ),
        ),
        body: PageView(
          controller: pageController,
          pageSnapping: true,
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
            });
          },
          children: [
            AppsPage(),
            GamePage(),
            MoviePage(),
            BookPage(),
          ],
        ),
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: CupertinoSwitch(
              value: Global.isIOS,
              onChanged: (val) {
                setState(() {
                  Global.isIOS = val;
                });
              }),
        ),
        child: CupertinoApp(
          home: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.today),
                  label: "Today",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.game_controller),
                  label: "Games",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.app_badge),
                  label: "Apps",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.square_arrow_down_fill),
                  label: "Updates",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: "Search",
                ),
              ],
            ),
            tabBuilder: (context, i) {
              return tabs[i];
            },
          ),
        ),
      );
    }
  }
}
