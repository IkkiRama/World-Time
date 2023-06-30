import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build state run");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text("Choose Location"),
        ),
        body: Column(
          children: <Widget>[
            Text("Choose Location Screen"),
            ElevatedButton(
                onPressed: () => setState(() => counter++),
                child: Text("Counter is : ${counter}"))
          ],
        ));
  }
}
