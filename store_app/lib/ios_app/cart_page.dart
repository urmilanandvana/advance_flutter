import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../global.dart';

class CartPAge extends StatefulWidget {
  const CartPAge({Key? key}) : super(key: key);

  @override
  State<CartPAge> createState() => _CartPAgeState();
}

class _CartPAgeState extends State<CartPAge> {
  DateTime currentDate = DateTime.now();

  GlobalKey<FormState> cardFormKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  String period = '';

  int? allTotal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          Text(
            "Shopping Cart",
            style: TextStyle(
              fontSize: 25,
              color: CupertinoColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Form(
            key: cardFormKey,
            child: CupertinoFormSection(
              children: [
                CupertinoTextFormFieldRow(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter the Name..';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      Global.name = val;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  padding: EdgeInsets.all(15),
                  controller: nameController,
                  prefix: Icon(
                    CupertinoIcons.person_alt,
                    color: CupertinoColors.systemGrey3,
                  ),
                  placeholder: "Name",
                ),
                CupertinoTextFormFieldRow(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter the Email..';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      Global.email = val;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  padding: EdgeInsets.all(15),
                  controller: emailController,
                  prefix: Icon(
                    CupertinoIcons.exclamationmark_square_fill,
                    color: CupertinoColors.systemGrey3,
                  ),
                  placeholder: "Email",
                ),
                CupertinoTextFormFieldRow(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter the Location..';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      Global.location = val;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  padding: EdgeInsets.all(15),
                  controller: locationController,
                  prefix: Icon(
                    CupertinoIcons.location_solid,
                    color: CupertinoColors.systemGrey3,
                  ),
                  placeholder: "Location",
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              Icon(
                CupertinoIcons.time,
                color: CupertinoColors.systemGrey4,
              ),
              SizedBox(width: 10),
              Text(
                "Delivery Time",
                style: TextStyle(
                  color: CupertinoColors.systemGrey4,
                ),
              ),
              Spacer(),
              Text(
                "${currentDate.month} ${currentDate.day},${currentDate.year} ${currentDate.hour}:${currentDate.minute}$period ",
                style: TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: currentDate,
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (dateTime) {
                setState(
                  () {
                    currentDate = dateTime;
                    if (currentDate.hour > 11) {
                      period = "PM";
                    } else {
                      period = "AM";
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ...Global.allItems.map((e) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      e.total = 0 + int.parse(e.price.toString());

                      allTotal = e.total;
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("${e.image}"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${e.name}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "${e.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "${e.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          Text(
            "${allTotal}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
