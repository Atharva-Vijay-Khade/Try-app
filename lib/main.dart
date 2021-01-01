import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.icecream),onPressed: (){
            print("icecream");
          },),
          SizedBox(
            width: 30,
          ),
          IconButton(icon: Icon(Icons.image),onPressed: (){
            print("image");
          },),
          SizedBox(
            width: 20,
          ),
          IconButton(icon: Icon(Icons.sports_cricket),onPressed: (){
            print("cricket");
          },),
           SizedBox(
            width: 10,
          ),
        ],
        title: Text("Try App"),
        centerTitle: false,
      ),
      body: Implementsnackbar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: (){
          print("call missed");
        },
        child: Icon(Icons.call_missed),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            label: "ac",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "email",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: "call",
          ),
        ],
        onTap: (int index) {
          print(index);
        },
      ),
    );
  }
}

class Implementsnackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.cyan,
        ),
        child: GestureDetector(
          onTap: () {
            final snackbar = SnackBar(
              content: Text("hello world"),
            );
            Scaffold.of(context).showSnackBar(snackbar);
          },
          child: Text("tap"),
        ),
      ),
    );
  }
}
