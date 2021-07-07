import 'package:flutter/material.dart';
import 'package:first_e_and_p/screens/calculation_page.dart';

class MyDashBoardPage extends StatefulWidget {
  final String internalDiameterOutput;
  final String costOutput;
  
  MyDashBoardPage(String internalDiameterOutput, String costOutput)
      : this.internalDiameterOutput = internalDiameterOutput,
        this.costOutput = costOutput;

  MyDashBoardPage.fromMyDashboardpage(
      {Key key, this.internalDiameterOutput, this.costOutput})
      : super(key: key);

  @override
  _MyDashBoardPageState createState() => _MyDashBoardPageState();
}

class _MyDashBoardPageState extends State<MyDashBoardPage> {
  @override
  void initState() {
    super.initState();
    _isInternalDiameter = widget.internalDiameterOutput;
    _isCost = widget.costOutput;
  }

  var _isInternalDiameter;
  var _isCost;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Ready to go!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.green),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            SizedBox(height: size.height * 0.09),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: 5, top: 15, left: 0, right: 0),
                  child: Column(
                    children: <Widget>[
                      getImage('assets/images/valve_one.png'),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text('Internal Diameter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54),
                            textAlign: TextAlign.center)),
                    SizedBox(height: size.height * 0.007),
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text('Inches',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black87),
                            textAlign: TextAlign.center)),
                    SizedBox(height: size.height * 0.007),
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text(_isInternalDiameter,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.orange),
                            textAlign: TextAlign.center)),
                  ],
                )
              ],
            ),
            SizedBox(height: size.height * 0.009),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: 5, top: 15, left: 0, right: 0),
                  child: Column(
                    children: <Widget>[
                      getImage('assets/images/cash_one.png'),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text('Cost',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54),
                            textAlign: TextAlign.center)),
                    SizedBox(height: size.height * 0.007),
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text('Dollars',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black87),
                            textAlign: TextAlign.center)),
                    SizedBox(height: size.height * 0.007),
                    Container(
                        padding: new EdgeInsets.only(bottom: 0),
                        child: Text('USD' + _isCost,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.green[700]),
                            textAlign: TextAlign.center)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget getImage(imageName) {
  AssetImage assetImage = AssetImage(imageName);
  Image image = Image(
    image: assetImage,
    width: 150,
    height: 150,
  );
  return Container(
      child: image,
      margin: EdgeInsets.only(bottom: 10, top: 10, left: 15, right: 0));
}
