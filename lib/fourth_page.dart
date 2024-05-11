import 'package:flutter/material.dart';
import 'package:vadana/custom_scaffold.dart';
import 'package:vadana/additional_content.dart';
import 'package:vadana/fifth_page.dart';

class Fourth_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            // First row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fifth_Page()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        height: 270,
                        width: 270,
                        child: Card(
                          elevation: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'lib/images/thali.jpeg',
                                width: 250,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Veg Thali [₹ 140]',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '3 Chapati, 2 Sabji, Rice, Dal, Salad, Sweet',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text('Total Count : 22',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Second row
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 270,
                      width: 270,
                      child: Card(
                        elevation: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'lib/images/thali.jpeg',
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Veg Thali [₹ 140]',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '3 Chapati, 2 Sabji, Rice, Dal, Salad, Sweet',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text('Total Count : 22',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            AdditionalContent(),
          ],
        ),
      ),
    );
  }
}
