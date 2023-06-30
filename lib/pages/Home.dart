import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Home'),
        // ),
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Text("Home Screen"),
        ElevatedButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          icon: Icon(Icons.edit_location),
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ChooseLocation()));

            Navigator.pushNamed(context, "/location");
          },
          label: Text("Change Location Screen"),
        )
      ],
    )));
  }
}
