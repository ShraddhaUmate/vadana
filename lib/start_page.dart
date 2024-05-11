import 'package:flutter/material.dart';

import 'home_page.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35) ,
                  child: Image.asset(
                    'lib/images/biryani.jpg',
                    fit: BoxFit.cover,
                  
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white, // Change the color to match your design
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enjoy Eating',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome to our food app',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red.shade400,
                    ),
                  ),
                  SizedBox(height: 20), // Adding some space below the text
                  ElevatedButton(
                    onPressed: () {
                      // Add your button action here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
