import 'package:flutter/material.dart';
import 'nabl.dart';
import 'jci.dart';

class Nabl extends StatefulWidget {
  Nabl({Key key}) : super(key: key);

  @override
  _NablState createState() => _NablState();
}

class _NablState extends State<Nabl> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
      body: Stack(children: [
        ClipPath(
  clipper: BezierClipper(),
  child: Container(
    color : Colors.red,
    //Color.fromRGBO(255, 91, 53, 1),
    
  ),
),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: TextStyle(color: Colors.white,
                fontSize: 29, fontWeight: FontWeight.bold, ),
          ),
          SizedBox(height:15),
          Text(
            "We are glad you are here,Lets get started",
            style: TextStyle(color: Colors.white,
                fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Arial",),
            textAlign: TextAlign.center,
            
          ),
      
          SizedBox(
            height: 150,
          ),
          Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/compliant.png"),
                  ))),
          SizedBox(
            height: 15,
          ),
          Text(
            "NABL",
            style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
          ),
          SizedBox(height:20),
          Text(
            "It has been established with the objective of providing accreditations to medical testing laboratories",
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          ],
        ),
      ]
    ),
        /*floatingActionButton:FloatingActionButton(
        tooltip: 'Increment',
        onPressed: ()
        {
          print("clicked");
        },
        child: Icon(Icons.skip_next),
        backgroundColor: Colors.red,

      ),*/
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, 
        child:Row(
          
          children: <Widget>[
            SizedBox(width: 20),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
               }, 
              icon: Icon(Icons.skip_previous,color: Colors.red,)
              ),
            SizedBox(width: 200),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
             builder: (context)=>Jci()));
              }, 
              icon: Icon(Icons.skip_next,color: Colors.red,))
          ],
        )
      ),
        
        )
      
    );
  }
}

class BezierClipper extends CustomClipper<Path>{
 @override
Path getClip(Size size){
  Path path = new Path();
  path.lineTo(0, size.height*0.47); //vertical line
  path.cubicTo(size.width/3, size.height/2, 2*size.width/3, size.height*0.3, size.width, size.height*0.35); //cubic curve
  path.lineTo(size.width, 0); //vertical line
  return path;
}

@override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}