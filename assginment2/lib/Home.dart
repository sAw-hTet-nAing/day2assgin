import 'package:assginment2/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber[300],
            title: Text("Home"),
            actions: [
              GestureDetector(
                onTap: (() => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))),
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.login_rounded,
                    semanticLabel: 'Login',
                  ),
                ),
              )
            ],
          ),
        ),
        onWillPop: _onWillPop);
  }
}
