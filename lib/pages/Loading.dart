import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print("The title is ${data['title']}");
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Loading Screen"));
  }
}
