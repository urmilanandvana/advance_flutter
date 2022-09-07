import 'package:flutter/material.dart';

import 'global/global_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  int initStepperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper App"),
      ),
      body: Stepper(
        currentStep: initStepperIndex,
        type: StepperType.vertical,
        onStepContinue: () {
          if (initStepperIndex < 2) {
            setState(() {
              initStepperIndex++;
            });
          }
        },
        onStepCancel: () {
          if (initStepperIndex > 0) {
            setState(() {
              initStepperIndex--;
            });
          }
        },
        steps: [
          Step(
            title: const Text("SignUp"),
            content: Form(
              key: signUpFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
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
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "Full Name",
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter the email..';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      setState(() {
                        Global.email = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email Id",
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter the password..';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      setState(() {
                        Global.password = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open),
                      hintText: "Password*",
                    ),
                  ),
                  TextFormField(
                    controller: conformPasswordController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter the conformPassword..';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      setState(() {
                        Global.conformPassword = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open),
                      hintText: "Conform Password*",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Step(
            title: const Text("Login"),
            content: Form(
              key: loginFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: userNameController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter the UserName..';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      setState(() {
                        Global.userName = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "User Name",
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter the Password..';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      setState(() {
                        Global.password = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open),
                      hintText: "Password",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Step(
            title: const Text("Home"),
            content: Container(),
          ),
        ],
      ),
    );
  }
}
