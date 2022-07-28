import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.amber[300]),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text("Please Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ))),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                              key: key,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: TextFormField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Enter Your Email"),
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return "Email Must Not Be Empty";
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black)),
                                    ),
                                    child: TextFormField(
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Enter Your Password"),
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return "Password Must Not Be Empty";
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text("Create New Accounts")),
                                  Container(
                                    decoration:
                                        BoxDecoration(color: Colors.amber[300]),
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: OutlinedButton(
                                      onPressed: (() {}),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
