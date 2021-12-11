import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1 = 0, num2 = 0, ans = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void multy() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 ~/ num2);
    });
  }

  void clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      ans = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.all(40.0),
          child: Column(
            children: <Widget>[
              Text(
                "Ouptut : $ans",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 1"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 2"),
                controller: t2,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      doAdd();
                    },
                    child: Text("+"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      sub();
                    },
                    child: Text("-"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      multy();
                    },
                    child: Text("*"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      div();
                    },
                    child: Text("/"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      clear();
                    },
                    child: Text("clear"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
