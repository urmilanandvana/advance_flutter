import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingIosPage extends StatefulWidget {
  const SettingIosPage({Key? key}) : super(key: key);

  @override
  State<SettingIosPage> createState() => _SettingIosPageState();
}

class _SettingIosPageState extends State<SettingIosPage> {
  bool lockSwitchVal = true;
  bool fingerSwitchVal = false;
  bool passwordSwitchVal = true;

  TextStyle textStyle = const TextStyle(
    color: CupertinoColors.systemGrey,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  TextStyle title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.7),
  );
  TextStyle subTitle = const TextStyle(
    fontSize: 16,
    color: CupertinoColors.systemGrey3,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Common",
            style: textStyle,
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.globe,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Language",
                  style: title,
                ),
                const Spacer(),
                Text(
                  "English",
                  style: subTitle,
                ),
                const Icon(
                  CupertinoIcons.forward,
                  color: CupertinoColors.systemGrey3,
                )
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.cloud,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Environment",
                  style: title,
                ),
                const Spacer(),
                Text(
                  "Production",
                  style: subTitle,
                ),
                const Icon(
                  CupertinoIcons.forward,
                  color: CupertinoColors.systemGrey3,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Common",
            style: textStyle,
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.phone_fill,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Phone Number",
                  style: title,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.envelope_fill,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Email",
                  style: title,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.exclamationmark_square,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Sign Out",
                  style: title,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Security",
            style: textStyle,
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.phonelink_lock_sharp,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Lock app in Background",
                  style: title,
                ),
                const Spacer(),
                CupertinoSwitch(
                  activeColor: CupertinoColors.destructiveRed,
                  value: lockSwitchVal,
                  onChanged: (val) {
                    lockSwitchVal = val;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.fingerprint,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Use fingerprint",
                  style: title,
                ),
                const Spacer(),
                CupertinoSwitch(
                  activeColor: CupertinoColors.destructiveRed,
                  value: fingerSwitchVal,
                  onChanged: (val) {
                    fingerSwitchVal = val;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.lock_fill,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Change password",
                  style: title,
                ),
                const Spacer(),
                CupertinoSwitch(
                  activeColor: CupertinoColors.destructiveRed,
                  value: passwordSwitchVal,
                  onChanged: (val) {
                    passwordSwitchVal = val;
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Misc",
            style: textStyle,
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.doc,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Theme of Service",
                  style: title,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Container(
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.rectangle_fill_on_rectangle_fill,
                  color: CupertinoColors.systemGrey3,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "Open Source Licenses",
                  style: title,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
