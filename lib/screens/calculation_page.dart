//import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_e_and_p/screens/dashboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // gotoSecondActivity(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => MyDashBoardPage()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // if(this._goToDashboard){

        // }
        );
  }
}

class MyCalcPage extends StatefulWidget {
  const MyCalcPage({Key key, this.onTextChanged}) : super(key: key);

  final void Function(String) onTextChanged;
  @override
  _MyCalcPageState createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage> {
  //Navigate to next screen

  // controller
  TextEditingController _condensateTextEditingController =
      TextEditingController();

  TextEditingController _waterTextEditingController = TextEditingController();

  TextEditingController _gasTextEditingController = TextEditingController();

  TextEditingController _distanceTextEditingController =
      TextEditingController();
  String internalDiameterOutput = '';
  String costOutput = '';

  @override
  void initState() {
    super.initState();
    _condensateTextEditingController.addListener(() =>
        widget.onTextChanged != null
            ? widget.onTextChanged(_condensateTextEditingController.text)
            : null);
    _waterTextEditingController.addListener(() => widget.onTextChanged != null
        ? widget.onTextChanged(_waterTextEditingController.text)
        : null);
    _gasTextEditingController.addListener(() => widget.onTextChanged != null
        ? widget.onTextChanged(_gasTextEditingController.text)
        : null);
    _distanceTextEditingController.addListener(() =>
        widget.onTextChanged != null
            ? widget.onTextChanged(_distanceTextEditingController.text)
            : null);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Fill In Data',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.green),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            SizedBox(height: size.height * 0.07),
            Container(
                padding: new EdgeInsets.only(bottom: 0),
                child: Text('Condensate (BPD)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black54),
                    textAlign: TextAlign.center)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade50, // set border color
                    width: size.width * 0.01), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _condensateTextEditingController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 14, right: 6),
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
                padding: new EdgeInsets.only(bottom: 0),
                child: Text('Water (BPD)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black54),
                    textAlign: TextAlign.center)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade50, // set border color
                    width: size.width * 0.01), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _waterTextEditingController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 14, right: 6),
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
                padding: new EdgeInsets.only(bottom: 0),
                child: Text('Gas (MMSCFD)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black54),
                    textAlign: TextAlign.center)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade50, // set border color
                    width: size.width * 0.01), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _gasTextEditingController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 14, right: 6),
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
                padding: new EdgeInsets.only(bottom: 0),
                child: Text('Distance (km)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black54),
                    textAlign: TextAlign.center)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade50, // set border color
                    width: size.width * 0.01), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _distanceTextEditingController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 14, right: 6),
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 6, right: 6),
              child: SizedBox(
                  width: size.width * 5,
                  height: size.height * 0.09,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[700],
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text('Compute',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                      onPressed: () {
                        
                        this.internalDiameterOutput = _getInternalDiameter();
                        this.costOutput = _getCost(this.internalDiameterOutput);
                        
                        WidgetsBinding.instance
                            .addPostFrameCallback((_) => _reset());
                        //                          () async {
                        // await Future.delayed(Duration(seconds: 0));
                        // _controller.clear();
                        // },
                        // print(this.internalDiameterOutput);
                        // print(this.costOutput);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyDashBoardPage(
                                    this.internalDiameterOutput,
                                    this.costOutput)));
                      })),
            ),
          ]),
        ),
      ),
    );
  }

  String _getInternalDiameter() {
    String internalDiameter = '';
    int internalDiameterNum = 0;
    double condensate = double.parse(_condensateTextEditingController.text);
    double water = double.parse(_waterTextEditingController.text);
    double gas = double.parse(_gasTextEditingController.text);

    double q = condensate + water;
    double r = (gas * pow(10, 6)) / q;
    double qv = q / (1000 * 10);

    double zrt = 1 * r * 600;
    internalDiameterNum =
        (pow(((11 + ((zrt) / (16.7 * 1122.5))) / qv), 0.5)).ceil();
    internalDiameter = "$internalDiameterNum";
    print(internalDiameter);
    return internalDiameter;
  }

  String _getCost(String internalDiameter) {
    double distance = double.parse(_distanceTextEditingController.text);
    double internalDiameterNum = double.parse(internalDiameter);
    int costValue = (100000 * internalDiameterNum * distance).ceil();

    String cost = '$costValue';
    print(cost);
    return cost;
  }

  void _reset() {
    _condensateTextEditingController.clear();
    _waterTextEditingController.clear();
    _gasTextEditingController.clear();
    _distanceTextEditingController.clear();
  }
}
