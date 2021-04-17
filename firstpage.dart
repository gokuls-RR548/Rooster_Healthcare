import 'package:flutter/material.dart';
import '/homescreen/main_homescreen.dart';

class Firstpage extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

class _Dropp extends State<Firstpage> {
  String item1, item2, item3;
  List listItem = [
    "Allopathic Clinics",
    "Ayurveda",
    "AYUSH Hospitals",
    "Blood Bank",
    "Blood Storage Centre",
    "CHC",
    "Clinical Trial",
    "Dental Clinics",
    "Dental Facilities",
    "Emergency Deptt",
    "Eye Care Organisation"
        "Homeopathy"
  ];
  List quality = [
    "Entry Level NABH 1st time",
    "Entry Level NABH 2nd time",
   
    
  ];
  List element = ["Documentation/Manuals"];
  final Color primaryColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Self Assesment Toolkit 1st Page",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text("Business Category Code"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  value: item1,
                  onChanged: (newValue) {
                    setState(() {
                      item1 = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Quality Accreditations Wished For code"),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  value: item2,
                  onChanged: (newValue) {
                    setState(() {
                      item2 = newValue;
                    });
                  },
                  items: quality.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                icon: Icon(Icons.note),
                labelText: "Notes for SAT",
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              child: Text('Save', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
