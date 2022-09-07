import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/ios_app/cart_page.dart';
import 'package:store_app/ios_app/product_page.dart';
import 'package:store_app/ios_app/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List tabs = [
    const ProductPage(),
    const SearchPage(),
    const CartPAge(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Product",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                label: "Cart",
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
