import 'package:flutter/material.dart';
class Secondpage extends StatelessWidget {
  final String name;
   Secondpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(' Second page '),),
      body: Center(
        child: Text(name),
      ),
    );
  }}

class Secondpage1 extends StatefulWidget {
  final String name;

 Secondpage1({super.key,
    required this.name
  });

  @override
  State<Secondpage1> createState() => _SecondpageState();
}

  class _SecondpageState extends State<Secondpage1> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text('Second page'),),
  body:
  Column(
  children: [
  Center(
  child: Text(widget.name),
  ),



  ],
  )


  );
  }
  }