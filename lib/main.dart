import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:xlive_switch/xlive_switch.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value = true;
  var val = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final be = TextStyle(
      fontFamily: "SummerLightItalic",
      fontSize: width * .07,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: Text(
            "Custom Switches In Flutter",
            style: be,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          margin: EdgeInsets.all(width * .1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: width * .05),
                      child: Text(
                        "Package Used : LiteRolingSwitch",
                        style: be,
                      ),
                    ),
                    LiteRollingSwitch(
                      // animationDuration: Duration(milliseconds: 50),
                      //initial value
                      value: true,
                      textOn: 'ACTIVE',
                      textOff: 'INACTIVE',
                      colorOn: Colors.greenAccent[700],
                      colorOff: Colors.redAccent[700],
                      iconOn: Icons.done,
                      iconOff: Icons.remove_circle_outline,
                      textSize: 12.0,
                      onChanged: (bool state) {
                        //Use it to manage the different states
                        print('Current State of SWITCH IS: $state');
                      },
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: width * .1),
                    child: Text(
                      "Package Used : DayNightSwitch",
                      style: be,
                    ),
                  ),
                  DayNightSwitch(
                    value: val,
                    dayColor: Color(0xFFd56352),
                    nightColor: Color(0xFF1e2230),
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: width * .05),
                    child: Text(
                      "Package Used : XLiveSwitch",
                      style: be,
                    ),
                  ),
                  Container(
                    width: width * .5,
                    child: XlivSwitch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
