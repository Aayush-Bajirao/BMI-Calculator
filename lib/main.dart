import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: bmi_calc(),
    ));

class bmi_calc extends StatefulWidget {
  @override
  State<bmi_calc> createState() => _bmi_calcState();
}

class _bmi_calcState extends State<bmi_calc> {
  double val = 150; //value of slider
  int weight_w = 0;
  int weight = 0;
  int age = 0;
  int bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 36),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 19, 18, 36),
        elevation: 0,
      ),
      body: Container(
//column for whole app page----------------------------------------
        child: Column(
          children: <Widget>[
//First Row of app containing male and female options----------------------------------------
            Container(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(16.0),
                            color: Color.fromARGB(255, 69, 67, 100),
                          ),
                          child: Column(
                            children: [
//Male Box----------------------------------------------------------------

                              Container(
                                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                                child: Icon(
                                  Icons.male,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                child: Text(
                                  'MALE',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(16.0),
                            color: Color.fromARGB(255, 69, 67, 100),
                          ),
                          child: Column(
                            children: [
                              Container(
//Female Box---------------------------------------------------------------------

                                child: Container(
                                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                                  child: Icon(
                                    Icons.female,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
//Second Row Slider section-variable=val------------------------------------------------------------------
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Color.fromARGB(255, 69, 67, 100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
//Slider section heading----------------------------------------------------------
                    Container(
                      child: Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),

//Slider section values use ${val} for getting value of slider

                    Container(
                      child: Text(
                        '${val} cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //Actual Slider
                    Container(
                      child: Column(
                        children: [
                          Slider(
                              value: val,
                              min: 125,
                              max: 225,
                              divisions: 100,
                              onChanged: (double value) => (setState(() {
                                    val = value;
                                  }))),
                        ],
                      ),
                    )
                  ],
                )),
//Third Row Wieght and Age options-variable=age, weight-----------------------------------------------------------
            Container(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Weight Box----------------------------------------------------------------

                  Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Color.fromARGB(255, 69, 67, 100),
                        ),
                        child: Column(
                          children: [
                            //Weight Textbox-----------------------------------------------------------
                            //variable weight
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                              child: Text(
                                '${weight}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                            //Weight Butonbox-----------------------------------------------------------
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {setState(() {weight += 1;});},
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {setState(() {weight -= 1;});},
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        )),
                  ),

                  //Age Box---------------------------------------------------------------------

                  Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Color.fromARGB(255, 69, 67, 100),
                        ),
                        child: Column(
                          children: [
                  //Age Textbox-----------------------------------------------------------
                  //variable age

                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text(
                                'AGE',
                                style: TextStyle(
                                                                    fontSize: 20,

                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                              child: Text(
                                '${age}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),

                  //Age Buttonbox-----------------------------------------------------------
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {setState(() {age += 1;});},
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: GestureDetector(
                                        onTap: () {setState(() {age -= 1;});},
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
//Fourth Row Display BMI-----------------------------------------------------------------
             Expanded(
               child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(16.0),
                    color: Color.fromARGB(255, 69, 67, 100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Calculated BMI',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
             
                            Text(
                              '${bmi}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
             
                            Text(
                              '${bmi}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        
                      ),
                      
                    ],
                  )),
             ),

          ],
        ),
      ),
    );
  }
}
