import 'package:flutter/material.dart';
import 'package:health/homescreen/firstpage.dart';
import 'wished.dart';
import 'business.dart';
import 'becomingcust.dart';
import 'services.dart';
import 'selfassesment_judgemen.dart';
import 'self.dart';
import 'standardchapter.dart';
import 'standardshi.dart';
import 'customer_profile.dart';
import 'country.dart';
import 'state.dart';
import 'district.dart';
import 'taluk.dart';
import 'customercontactsales.dart';

class Refer extends StatefulWidget {
  Refer({Key key}) : super(key: key);

  @override
  _ReferState createState() => _ReferState();
}

class _ReferState extends State<Refer> {
  var _card = GlobalKey();
  var _expand = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          key: _card,
          color: Colors.grey[200],
          elevation: 5,
          child: AnimatedContainer(
            width: 150,
            height: _expand ? 300 : 150,
            duration: Duration(milliseconds: 200),
          ),
        ),
        GestureDetector(
          onTap: () {
            _showTile();
          },
          onLongPress: () {
            _showTile();
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              width: 150,
              height: 150,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Reference",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _showTile() {
    Future.delayed(Duration(milliseconds: 500), () {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            color: Colors.grey[300],
            height: 350,
            width: 500,
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.topCenter,
              fit: StackFit.loose,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0, -50),
                  child: ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: FittedBox(
                        alignment: Alignment.center,
                        child: Image.asset("assets/business.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Reference",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(children: [
                        SizedBox(width:50,),
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ServicesFocus()));
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                child: Container(
                                  width: 80,
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Services & Focus ",
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Standardchapterh()));
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                child: Container(
                                  width: 80,
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Standard Healthcare Industry ",
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],),
                      
                      Row(children: [
                        SizedBox(width:50,),
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Firstpage()));
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                child: Container(
                                  width: 80,
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "SATK 1st Page ",
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                       Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Self()));
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 5,
                                child: Container(
                                  width: 75,
                                  height: 70,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "SATK Template ",
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(height: 20),
                      RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 5,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel"),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

 

