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
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
//First Row of app containing male and female options----------------------------------------
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
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
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 30.0, 40.0, 30.0),
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
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
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
                                    padding: EdgeInsets.fromLTRB(
                                        40.0, 30.0, 40.0, 30.0),
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
                  ),
                ],
              ),
            ),
            Container(
//Slider section--------------------------------------------------------------------
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                padding: EdgeInsets.all(10),
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
                        '${val}cm',
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
                                    val = value;}))),
                        ],
                      ),
                    )
                  ],
                )
              ),
//Wieght and Age container-----------------------------------------------------------------------
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
//First Row of app containing male and female options----------------------------------------
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
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
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 30.0, 40.0, 30.0),
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
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Expanded(
                      child: Container(
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
                                    padding: EdgeInsets.fromLTRB(
                                        40.0, 30.0, 40.0, 30.0),
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
                  ),
                ],
              ),
            ),
             


            
          ],
        ),
      ),
    );
  }
}
