import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  String output = "0";
  var _output = "0";
  var string = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }

  String full_output = "";
  int fontsize = 70;

  buttonpressed(String text) {
    if (text == 'C') {
      num1 = 0;
      num2 = 0;
      operand = "";
      _output = "0";
      setState(() {
        full_output = "";
      });
    } else if (text == "+" || text == "-" || text == "x" || text == "/") {
      operand = text;
      num1 = double.parse(output);
      _output = "0";
      setState(() {
        full_output = full_output + text;
      });
    } else if (text == ".") {
      if (!_output.contains(".")) {
        _output = _output + ".";
        setState(() {
          full_output = full_output + '.';
        });
      }
    } else if (text == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = add(num1, num2).toString();
      }
      if (operand == "-") {
        _output = subtract(num1, num2).toString();
      }
      if (operand == "x") {
        _output = multiply(num1, num2).toString();
      }
      if (operand == "/") {
        _output = divide(num1, num2).toString();
      }
    } else {
      _output = _output + text;
      full_output += text;
    }
    setState(() {
      output = double.parse(_output).toString();
      if (double.parse(_output) >= 999999) {
        fontsize = 35;
      } else if (double.parse(_output) >= 9000000000) {
        fontsize = 15;
      } else if (double.parse(_output) >= 9000000000000) {
        fontsize = 6;
      }
    });
  }

  Color Scaffold_Color = Colors.white;
  Color Button_color = Color(0xFFE9F0F4);
  Color Text_color = Color(0xFF5B6067);
  Color ClearButton = Color(0xFFf8eced);
  Color ClearColor = Color(0xFFf66d74);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Scaffold_Color,
      appBar: AppBar(
        backgroundColor: Scaffold_Color,
        bottomOpacity: 0,
        title: Row(
          children: [
            Text(
              "CALCULATOR",
              style: TextStyle(color: Text_color, fontFamily: 'monospace'),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Scaffold_Color = Colors.white;
                            Button_color = Color(0xFFE9F0F4);
                            Text_color = Color(0xFF5B6067);
                            ClearButton = Color(0xFFf8eced);
                            ClearColor = Color(0xFFf66d74);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Button_color,
                          ),
                          child: Center(
                            child: Text(
                              "Light",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Text_color),
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Scaffold_Color = Colors.black;
                            Button_color = Color(0xFF222427);
                            Text_color = Colors.white;
                            ClearButton = Color(0xFF2d191e);
                            ClearColor = Color(0xFFba363f);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Button_color,
                          ),
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Center(
                            child: Text(
                              "Dark",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Text_color),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    output,
                    style: TextStyle(
                        fontSize: fontsize.toDouble(),
                        fontWeight: FontWeight.w700,
                        color: Text_color),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("C");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ClearButton),
                          child: Center(
                            child: Text("Clear",
                                style: TextStyle(
                                    fontSize: 30, color: Color(0xFFf66d74))),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed(".");
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text(".",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        buttonpressed("/");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFF9500),
                          ),
                          child: Center(
                            child: Text(
                              "/",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("7");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("7",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("8");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("8",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("9");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("9",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        buttonpressed("x");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFF9500),
                          ),
                          child: Center(
                            child: Text(
                              "x",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("4");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("4",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("5");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("5",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("6");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("6",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        buttonpressed("-");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFF9500),
                          ),
                          child: Center(
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("1");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("1",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("2");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("2",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("3");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("3",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        buttonpressed("+");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFF9500),
                          ),
                          child: Center(
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("0");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("0",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          buttonpressed("00");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Button_color),
                          child: Center(
                            child: Text("00",
                                style:
                                    TextStyle(fontSize: 30, color: Text_color)),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        buttonpressed("=");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF2EC973),
                          ),
                          child: Center(
                            child: Text(
                              "=",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
