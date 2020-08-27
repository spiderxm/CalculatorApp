import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        title: Row(
          children: [
            Text(
              "CALCULATOR",
              style: TextStyle(color: Colors.black, fontFamily: 'monospace'),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Row(),
            ),
            Expanded(
              flex: 2,
              child: Row(),
            ),
            Expanded(
              flex: 1,
              child: Row(),
            ),
            Expanded(
              flex: 1,
              child: Row(),
            ),
            Expanded(
              flex: 1,
              child: Row(),
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
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE9F0F4)),
                      child: Center(
                        child: Text("1",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF5B6067))),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE9F0F4)),
                      child: Center(
                        child: Text("2",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF5B6067))),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE9F0F4)),
                      child: Center(
                        child: Text("3",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF5B6067))),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF2EC973),
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
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFE9F0F4)),
                      child: Center(
                        child: Text("0",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF5B6067))),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                        child: Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE9F0F4)),
                      child: Center(
                        child: Text(".",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF5B6067))),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
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
