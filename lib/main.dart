import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas List Buah"),
        ), 
        body: ListData(),
      ),
    );
  }    
}

class ListData extends StatefulWidget{
  const ListData({ Key? key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData>{
  List names = [
    "Jeruk",
    "Anggur",
    "Jambu Biji",
    "Strawberry",
    "Nanas",
    "Apel",
    "Nangka",
    "Manggis",
    "Durian",
    "Delima",
    "Pisang",
    "Semangka",
    "Sirsak"
  ];
  @override
  Widget build(BuildContext context){
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context, int index){
        final number = index + 1;
        final name = names[index].toString();
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/$number.png', width:100,),
                Text(name)
              ],
            ),
          ),
        );
      }, itemCount: names.length,),
    );
  }
}