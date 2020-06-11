import 'package:flutter/material.dart';
import 'selectcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

const bgColor = Color.fromRGBO(236, 236, 236, 1);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: height / 2 + 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('images/img1.jpg'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color.fromRGBO(125, 156, 175, 1), width: 2),
                //Color.fromRGBO(238, 199, 176, 0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Elegant Long Sleeve\nSwing Top',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.black45,
                          size: 28,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        '\$240.00',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Color : Black',
                          style: TextStyle(color: Colors.black87, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            selectColor(
                              color: Colors.blueAccent,
                            ),
                            selectColor(
                              color: Colors.grey,
                            ),
                            selectColor(
                              color: Colors.pinkAccent,
                            ),
                            selectColor(
                              color: Colors.black87,
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Add To Bag +',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
