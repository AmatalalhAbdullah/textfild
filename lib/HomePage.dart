import 'package:flutter/material.dart';
import 'SecondPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => HomesState();}
class HomesState extends  State<Home>{
  TextEditingController controller1= TextEditingController();
  TextEditingController controller2= TextEditingController();
  late String controller3;
  void CopyText(){
    setState(() {
      controller2.text=controller1.text;});}
  void Navgitor(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Secondpage(
            name: controller1.text)));}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text('Home Page', style: TextStyle(color: const Color.fromARGB(255, 221, 217, 211)),),
        backgroundColor: const Color.fromARGB(255, 116, 80, 128),),
        backgroundColor: const Color.fromARGB(255, 64, 47, 128),
        body: Column(
          children: [
            SizedBox(height: 25,),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Enter the Name',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 82, 206, 66)),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                  )
              ),
              controller: controller1,
            ),
            SizedBox(height: 25,),
            TextField(
              decoration: InputDecoration(
                  labelText: ' the Number',
                  labelStyle: TextStyle(color: const Color.fromARGB(255, 83, 181, 63)),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)
                  )
              ),
              controller: controller2,
              readOnly: true,
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                  CopyText();},
                child: Text('Submit')),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                  Navgitor();},
                child: Text('Navr')),],),),);}}