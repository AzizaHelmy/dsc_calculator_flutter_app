import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void mult() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear() {
    t1.text="0";
    t2.text="0";
    sum=0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text("Calculator"),
      ),
      body: Container(
        //  margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result=$sum",
              style: TextStyle(fontSize: 30,color: Colors.black),
            ),
            SizedBox(
              height: 100.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,

              decoration: InputDecoration(
                hoverColor: Colors.white,
                hintText: "Enter first num",
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              cursorColor: Colors.white,
              decoration: InputDecoration(hintText: "Enter second num",fillColor: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    add();
                  },
                  child: Text("+",
                      style: TextStyle(color: Colors.white, fontSize: 27.0)),
                  color: Colors.green,
                ),
                MaterialButton(
                  onPressed: () {
                    sub();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 27.0),
                  ),
                  color: Colors.green,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    mult();
                  },
                  child: Text("*",
                      style: TextStyle(color: Colors.white, fontSize: 27.0)),
                  color: Colors.green,
                ),
                RaisedButton(
                  onPressed: () {
                    div();
                  },
                  child: Text("/",
                      style: TextStyle(color: Colors.white, fontSize: 27.0)),
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    clear();
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Text("CLEARE",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
