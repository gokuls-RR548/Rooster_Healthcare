import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Taluk1 extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

final Color primaryColor = Colors.red;

class _Dropp extends State<Taluk1> {
  String getData;
  var tname=TextEditingController();
  var alpha2=TextEditingController();
  var dname=TextEditingController();
  var scode=TextEditingController();
  var first="https://rooster-healthcare.herokuapp.com/api/table/Taluk";
  
  

  Future fetchData() async {
    setState(() {
      isLoading = true;
    });
    final http.Response response = await http.get(first);
    print(response.body);
      final items = json.decode(response.body);
      setState(() {
        this.users=items['a'];
        isLoading = false;
      });
  }

  @override 
  void initState(){
    super.initState();
    fetchData();
  }
  bool isLoading=false;
  List users = [];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taluk", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(padding: const EdgeInsets.all(25) ,
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),          
          TextFormField(
            controller: tname,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Taluk name: ",
              
            ),
          ),
          SizedBox(height: 18),
          TextFormField(
            controller: alpha2,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Alpha 2 Code: ",
            ),
          ),
           SizedBox(height: 18),
          TextFormField(
            controller: dname,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "District Name: ",
            ),
          ),
          SizedBox(height: 18),
          TextFormField(
            controller: scode,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "State Code: ",
            ),
          ),


          SizedBox(height: 18),

          RaisedButton(
            child: Text('Save', style: TextStyle(color: Colors.white)),
            onPressed: () {
             
              insert();
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            color: primaryColor,
          ),
          SizedBox(height: 18),

          RaisedButton(
            child: Text('Display', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>getBody()));
              },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            color: primaryColor,
          ),
        ],
      ),
      )
    );
  }
insert() async{
  var res=await http.post("https://rooster-healthcare.herokuapp.com/api/ajax/insert/",
  body:{ "taluk_name": tname.toString(), "Alpha_2_code":alpha2.toString(), "district_name":dname.toString(),
  "state_code":scode.toString() });
  return res;
}
   getBody(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Taluk Read Api", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(padding: const EdgeInsets.all(20) ,
      child:
    ListView.builder(
      itemCount: users.length,
      itemBuilder: (context,index){
      return getCard(users[index]);
    })
      )
    );
    
  }

  Widget getCard(item){
    var tname = item['taluk_name'];
    var alpha2 = item['Alpha_2_code'];
    var dname = item['district_name'];
    var scode=item['state_code'];
    return Card(
      color: Colors.grey[200],
      elevation: 10,
      shadowColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: 
              Column(
    children:[
    Row(
        children:[
          Text("Alpha_2_code: "),
          Text(alpha2.toString(),),
          SizedBox(width: 80),
          Icon(Icons.edit),
          //SizedBox(width: 10),
          Icon(Icons.delete)
        ]
    ), 
    Row(
        children:[
          Text("District Name: "),
          Text(dname.toString(),)
        ]
    ),
    Row(
        children:[
          Text("Taluk name: "),
          Text(tname.toString(),)
        ]
    ),
    Row(
        children:[
          Text("State code: "),
          Text(scode.toString(),)
        ]
    ),
    ]
    )
    ),
    ),  
    );
  }
}
