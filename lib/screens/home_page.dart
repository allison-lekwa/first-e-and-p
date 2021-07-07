import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    AssetImage e_and_p = AssetImage('images/e_and_p_logo.png');
    Image image = Image(image: e_and_p, width: 400, height: 400);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            new Wrap(                
              children: [
                Container(
                  width: size.width,
                  height: size.height*0.35,
                  decoration: new BoxDecoration(
                    
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/images/background_image.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: FractionalOffset(0.5, 0.25),
                      child: Text(
                      'Calculate Pipe \n Internal Diamenter \n & Costing',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
                      textAlign: TextAlign.center,
                      
                      )
                    )
                ),
                SizedBox(height: size.height*0.3),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          getImage('assets/images/e_and_p_logo.png'),
                        ],
                      ),
                    ),
                  )
                )
              ]
            ),

        ],
      ),
      
    );
  }
}

Widget getImage(imageName) {
  AssetImage assetImage = AssetImage(imageName);
  Image image = Image(
    image: assetImage,
    width: 300,
    height: 250,
  );
  return Container(
    child: image,
    margin: EdgeInsets.all(40),
  );
}
