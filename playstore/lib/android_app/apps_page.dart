import 'package:flutter/material.dart';

import '../global.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({Key? key}) : super(key: key);

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Text(
            "Recommended for you",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_outlined,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Global.items.map((e) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        AddModel data = AddModel(
                          logo: e['logo'],
                          title: e['title'],
                          point: e['point'],
                          views: e['views'],
                          greenText: e['greenText'],
                          greyText: e['greyText'],
                          download: e['download'],
                          rated: e['rated'],
                          aboutApp: e['aboutApp'],
                          view1Name: e['view1Name'],
                          view1Date: e['view1Date'],
                          view1Description: e['view1Description'],
                          view2Name: e['view2Name'],
                          view2Date: e['view2Date'],
                          view2Description: e['view2Description'],
                        );
                        setState(() {
                          Navigator.of(context)
                              .pushNamed('install_page', arguments: data);
                        });
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(e['logo']),
                          ),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(e['title']),
                    Text(e['point']),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        const ListTile(
          leading: Text(
            "New & updated apps",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_outlined,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Global.newApp.map((e) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        AddModel data = AddModel(
                          logo: e['logo'],
                          title: e['title'],
                          point: e['point'],
                          views: e['views'],
                          greenText: e['greenText'],
                          greyText: e['greyText'],
                          download: e['download'],
                          rated: e['rated'],
                          aboutApp: e['aboutApp'],
                          view1Name: e['view1Name'],
                          view1Date: e['view1Date'],
                          view1Description: e['view1Description'],
                          view2Name: e['view2Name'],
                          view2Date: e['view2Date'],
                          view2Description: e['view2Description'],
                        );
                        setState(() {
                          Navigator.of(context)
                              .pushNamed('install_page', arguments: data);
                        });
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(e['logo']),
                          ),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(e['title']),
                    Text(e['point']),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        const ListTile(
          leading: Text(
            "Suggested for you",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_outlined,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Global.suggestApp.map((e) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          AddModel data = AddModel(
                            logo: e['logo'],
                            title: e['title'],
                            point: e['point'],
                            views: e['views'],
                            greenText: e['greenText'],
                            greyText: e['greyText'],
                            download: e['download'],
                            rated: e['rated'],
                            aboutApp: e['aboutApp'],
                            view1Name: e['view1Name'],
                            view1Date: e['view1Date'],
                            view1Description: e['view1Description'],
                            view2Name: e['view2Name'],
                            view2Date: e['view2Date'],
                            view2Description: e['view2Description'],
                          );

                          setState(() {
                            Navigator.of(context)
                                .pushNamed('install_page', arguments: data);
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(e['logo']),
                            ),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(e['title']),
                      Text(e['point']),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
