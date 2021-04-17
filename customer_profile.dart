import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';

class Customerprofile extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

final Color primaryColor = Colors.red;

class _Dropp extends State<Customerprofile> {
  String item1, item2, item3, item4;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NABL", "JCI"];
  List notes = ["aaa", "bbb", "ccc"];
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Customer Profile", style: TextStyle(color: Colors.white)),
          backgroundColor: primaryColor,
        ),
        body: Center(
          child: SingleChildScrollView(
            child:Form(
              key: formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                //SizedBox(height:20),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.business_center_rounded),
                    labelText: "Business_Registration_No: ",
                    
                  ),
                  validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>10)
              {
                return "must less than 10 characters";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.business),
                    labelText: "Business_Registration_Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Alpha_2_Code: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length<2)
              {
                return "must be 2 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              else if(value.contains(RegExp(r'[a-z]')))
              {
                return "only capital letters allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "State_code: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length<2)
              {
                return "must be 2 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              else if(value.contains(RegExp(r'[a-z]')))
              {
                return "only capital letters allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "District_name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>15)
              {
                return "must be less than 15 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Business_Working_Address: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>50)
              {
                return "must be less than 50 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Full Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Calling Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Contract status name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email ID: ",
                  ),
                  validator: (value) {
          if (value.isEmpty) {
            return "This field is empty";
          }
          return value.contains('@') && value.contains('.')
              ? null
              : "Invalid Email Id.";
        },
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Secondary Email ID: ",
                  ),
                  validator: (value) {
          if (value.isEmpty) {
            return "This field is empty";
          }
          return value.contains('@') && value.contains('.')
              ? null
              : "Invalid Email Id.";
        },
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.local_phone),
                    labelText: "Landline Number : ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=8){return "must be 8 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
              }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Secondary Landline: ",
                  ),
                      validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=8){return "must be 8 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: "Mobile: ",
                  ),
                      validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Secondary Mobile: ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Whatsapp Number: ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Telegram Number: ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),

                SizedBox(height: 18),

                RaisedButton(
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    if(formKey.currentState.validate()){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  color: primaryColor,
                ),
              ],
            ),
          ),
          )
        ));
  }
}
