import 'package:flutter/material.dart';
import 'package:world_time/pages/Loading.dart';
import 'package:world_time/pages/choose_location.dart';
import "./pages/Home.dart";

void main() => runApp(MaterialApp(
      // home: Home(),
      initialRoute: "/",
      routes: {
        "/": (context) => const Loading(),
        "/home": (context) => const Home(),
        "/location": (context) => const ChooseLocation()
      },
    ));
