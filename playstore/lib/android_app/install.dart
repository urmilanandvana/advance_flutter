import 'dart:math';

import 'package:flutter/material.dart';
import 'package:playstore/global.dart';

class InstallPage extends StatefulWidget {
  const InstallPage({Key? key}) : super(key: key);

  @override
  State<InstallPage> createState() => _InstallPageState();
}

class _InstallPageState extends State<InstallPage> {
  TextStyle titleStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  TextStyle greenStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Color(0xff01875f),
  );
  TextStyle greyStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.grey[600],
  );

  TextStyle subTileStyle = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  TextStyle viewName = const TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    dynamic arg = ModalRoute.of(context)!.settings.arguments as AddModel;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(arg.logo),
                      ),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        arg.title,
                        style: titleStyle,
                      ),
                      Text(
                        "Microsoft Corporation",
                        style: greenStyle,
                      ),
                      Text(
                        "In-app purchases",
                        style: greyStyle,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        arg.point,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        arg.views,
                        style: greyStyle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        arg.download,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Download",
                        style: greyStyle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://play-lh.googleusercontent.com/EbEX3AN4FC4pu3lsElAHCiksluOVU8OgkgtWC43-wmm_aHVq2D65FmEM97bPexilUAvlAY5_4ARH8Tb3RxQ=w48-h16-rw",
                      ),
                      Text(
                        arg.rated,
                        style: greyStyle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff01875f),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: const EdgeInsets.only(
                      left: 170, right: 170, top: 10, bottom: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Install",
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About this app ",
                    style: subTileStyle,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                arg.aboutApp,
                style: greyStyle,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // minimumSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 10),
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Action",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // minimumSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 10),
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Editor's choice ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating and reviews",
                    style: subTileStyle,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Text(
                      arg.view1Name[0],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    arg.view1Name,
                    style: viewName,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff01875f),
                  ),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff01875f),
                  ),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff01875f),
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey[300],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    arg.view1Date,
                    style: greyStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                arg.view1Description,
                style: greyStyle,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.7),
                    child: Text(
                      arg.view2Name[0],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    arg.view2Name,
                    style: viewName,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff01875f),
                  ),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff01875f),
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey[300],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey[300],
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    arg.view2Date,
                    style: greyStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                arg.view2Description,
                style: greyStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
