import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  const CustomScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(Icons.menu, size: 30, color: Colors.black),
          onPressed: () {
            // Open drawer here
          },
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.location_on, size: 30, color: Colors.black),
            onPressed: () {
              // Open drawer here
            },
          ),

          TextButton(
            onPressed: () {
              // Handle cart button tap
            },
            child: Text(
              ' Add Cart',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(width: 16),
          Row(
            children: [
              Text(
                'Hi Shraddha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
        ],
      ),
      body: body,
      bottomNavigationBar: Container(
        height: 45, // Adjust height as needed
        color: Colors.grey[200], // Adjust as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'CONTACT US +91 1234567890',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black,
            //   ),
            // ),
            SizedBox(height: 5),
            Text(
              '© 2024 All rights reserved. Design and Devloped by Shraddha',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
