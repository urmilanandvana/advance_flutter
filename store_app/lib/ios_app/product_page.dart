import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            "Cupertino Store",
            style: TextStyle(
              fontSize: 25,
              color: CupertinoColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          ...Global.items.map((e) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(e['image']),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        e['price'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CupertinoButton(
                      child: const Icon(CupertinoIcons.add_circled),
                      onPressed: () {
                        AddModel i1 = AddModel(
                          image: e['image'],
                          name: e['name'],
                          price: e['price'],
                          total: Global.total,
                        );

                        setState(() {
                          Global.allItems.add(i1);
                        });
                        // Navig
                      }),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
