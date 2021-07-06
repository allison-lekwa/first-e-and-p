import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCalcPage extends StatefulWidget {
  const MyCalcPage({
    Key key,
  }) : super(key: key);
  @override
  _MyCalcPageState createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:size.height*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Fill In Data',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.green),
                        textAlign: TextAlign.center,
                      )
                  ),
                  

                ],
              ),              
              SizedBox(height: size.height*0.07),
              Container(
                padding: new EdgeInsets.only(bottom: 0),               
                child: Text(
                  'Condensate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center
                )
              ),
              Container(               
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade50,// set border color
                    width: size.width*0.01),   // set border width
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ), // set rounded corner radius
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 4,bottom: 4,left: 14,right: 6),
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: size.height*0.05),
              Container(
                padding: new EdgeInsets.only(bottom: 0),               
                child: Text(
                  'Water',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center
                )
              ),
              Container(               
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade50,// set border color
                    width: size.width*0.01),   // set border width
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ), // set rounded corner radius
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 4,bottom: 4,left: 14,right: 6),
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ), 
              SizedBox(height: size.height*0.05),
              Container(
                padding: new EdgeInsets.only(bottom: 0),               
                child: Text(
                  'Gas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center
                )
              ),
              Container(               
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade50,// set border color
                    width: size.width*0.01),   // set border width
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ), // set rounded corner radius
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 4,bottom: 4,left: 14,right: 6),
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: size.height*0.05),
              Container(
                padding: new EdgeInsets.only(bottom: 0),               
                child: Text(
                  'Distance',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center
                )
              ),
              Container(               
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade50,// set border color
                    width: size.width*0.01),   // set border width
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ), // set rounded corner radius
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 4,bottom: 4,left: 14,right: 6),
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02),
              Padding(
                padding: EdgeInsets.only(bottom:5, top:15 ,left: 6,right:6),
                child:SizedBox(
                  width: size.width*5,
                  height: size.height*0.09,
                  child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary:  Colors.green[700],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                    ),),
                    child: Text(
                      'Compute',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center
                    )
                  )
                ), 
              ),
            ]
          ),
        ),
      ),
      
    );
  }
}