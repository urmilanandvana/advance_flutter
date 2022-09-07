import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool lockSwitchVal = true;
  bool fingerSwitchVal = false;
  bool passwordSwitchVal = true;

  TextStyle textStyle = const TextStyle(
    color: Colors.red,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  TextStyle title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.7),
  );
  TextStyle subTitle = const TextStyle(
    fontSize: 18,
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
        ListTile(
          leading: const Icon(
            Icons.language,
            size: 30,
          ),
          title: Text(
            "Language",
            style: title,
          ),
          subtitle: Text(
            "English",
            style: subTitle,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          leading: const Icon(
            Icons.cloud_outlined,
            size: 30,
          ),
          title: Text(
            "Environment",
            style: title,
          ),
          subtitle: Text(
            "Production",
            style: subTitle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Account",
            style: textStyle,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.phone,
            size: 30,
          ),
          title: Text(
            "Phone number",
            style: title,
          ),
        ),
        const Divider(
          thickness: 1.2,
        ),
        ListTile(
          leading: Icon(
            Icons.email,
            size: 30,
          ),
          title: Text(
            "Email",
            style: title,
          ),
        ),
        const Divider(
          thickness: 1.2,
        ),
        ListTile(
          leading: Icon(
            Icons.assignment_return_outlined,
            size: 30,
          ),
          title: Text(
            "Sign Out",
            style: title,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Security",
            style: textStyle,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.phonelink_lock_sharp,
            size: 28,
          ),
          title: Text(
            "Lock app in background",
            style: title,
          ),
          trailing: Switch(
              activeColor: Colors.red,
              value: lockSwitchVal,
              onChanged: (val) {
                setState(() {
                  lockSwitchVal = val;
                });
              }),
        ),
        const Divider(
          thickness: 1.2,
        ),
        ListTile(
          leading: Icon(
            Icons.fingerprint,
            size: 28,
          ),
          title: Text(
            "Use fingerprint",
            style: title,
          ),
          trailing: Switch(
              activeColor: Colors.red,
              value: fingerSwitchVal,
              onChanged: (val) {
                setState(() {
                  fingerSwitchVal = val;
                });
              }),
        ),
        const Divider(
          thickness: 1.2,
        ),
        ListTile(
          leading: const Icon(
            Icons.lock,
            size: 28,
          ),
          title: Text(
            "Change password",
            style: title,
          ),
          trailing: Switch(
            activeColor: Colors.red,
            value: passwordSwitchVal,
            onChanged: (val) {
              setState(
                () {
                  passwordSwitchVal = val;
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          child: Text(
            "Misc",
            style: textStyle,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.local_laundry_service_rounded,
            size: 28,
          ),
          title: Text(
            "Terms of Service",
            style: title,
          ),
        ),
        const Divider(
          thickness: 1.2,
        ),
        ListTile(
          leading: Icon(
            Icons.source,
            size: 28,
          ),
          title: Text(
            "Open Source Licenses",
            style: title,
          ),
        ),
      ],
    );
  }
}
