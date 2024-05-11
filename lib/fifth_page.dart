import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vadana/timeslot_page.dart';

import 'custom_scaffold.dart';
import 'additional_content.dart';

class Fifth_Page extends StatefulWidget {
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<Fifth_Page> {


  int? _selectedDayIndex;
  int _selectedTiffinTypeIndex=-1;
  int? _selectedWeekendIndex;
  int? _selectedPackagingIndex;

  final List<String> lunchTimeSlots = ["11:00 AM - 1:00 PM", "1:00 PM - 3:00 PM", "3:00 PM - 4:30 PM"];
  final List<String> dinnerTimeSlots = ["6:30 PM - 8:00 PM", "8:00 PM - 9:30 PM", "9:30 PM - 11:00 PM"];



  List<String> _radioButtonTexts = [
    "Aloo Sabji",
    "Aloo Matar Sabji",
    "Bhendi Sabji",
    "Cabbage",
    "Palak Paneer",
    "Palak Malai",
    "Malai Kofta"
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header for the fifth page
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            Container(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/images/pulav.jpg',
                    fit: BoxFit.cover,
                    width: 800,
                    height: 400,
                  ),
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Veg Thali [₹ 140]',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '3 Chapati, 2 Sabji, Rice, Dal, Salad, Sweet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),


            Container(

                padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buildWeekDays(),
              ),
            ),
            Divider(),

            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),

                  child: Center(
                    child: Text(
                    'Select Sabji',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                                    ),
                  ),
              ),
            ),



            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    value: index,
                    groupValue: _selectedDayIndex,
                    onChanged: (value) {
                      setState(() {
                        _selectedDayIndex = value; // Nullable int to handle null values
                      });
                    },
                  ),
                  title: Text(
                    _radioButtonTexts[index], // Use the label from the list
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedDayIndex = index; // Nullable int to handle null values
                    });
                  },
                );
              },
            ),
            Divider(),


            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Tiffin Type',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTiffinTypeIndex = 0; // Update the selected tiffin type index for Lunch
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 0,
                  groupValue: _selectedTiffinTypeIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedTiffinTypeIndex = value as int;
                    });
                  },
                ),
                title: Row(
                  children: [
                    Text('Lunch  ', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 16), // Add some space between the text and the container
                    Timeslot_Page(timeSlots: lunchTimeSlots),
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.location_on), // Example icon
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.home), // Example icon
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.location_city), // Example icon
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTiffinTypeIndex = 1; // Update the selected tiffin type index for Dinner
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: _selectedTiffinTypeIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedTiffinTypeIndex = value as int;
                    });
                  },
                ),
                title: Row(
                  children: [
                    Text('Dinner ', style: TextStyle(fontSize: 18)),
                    SizedBox(width: 16), // Add some space between the text and the container
                    Timeslot_Page(timeSlots: dinnerTimeSlots),
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.location_on), // Example icon
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.home), // Example icon
                    SizedBox(width: 16), // Add space between containers
                    Icon(Icons.location_city), // Example icon
                  ],
                ),
              ),
            ),

// Similarly, wrap the weekend choice options and packaging options with GestureDetector as well

            Divider(),


            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Container(
                width: 170,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Weekend choice',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedWeekendIndex = 0; // Update the selected index for Saturday
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 0,
                  groupValue: _selectedWeekendIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedWeekendIndex = value as int;
                    });
                  },
                ),
                title: Text('Saturday', style: TextStyle(fontSize: 18)),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedWeekendIndex = 1; // Update the selected index for Sunday
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: _selectedWeekendIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedWeekendIndex = value as int;
                    });
                  },
                ),
                title: Text('Sunday', style: TextStyle(fontSize: 18)),
              ),
            ),
            //Divider(),

            //
            //
            // Container(
            //
            //   padding: EdgeInsets.all(16.0),
            //   alignment: Alignment.centerLeft,
            //   child: Container(
            //     width: 170,
            //     height: 30,
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   child: Center(
            //     child: Text('Start date',style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,),
            //                 ),
            //   ),
            // ),
            // ),





            Divider(),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Container(
                width: 170,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Packaging',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedPackagingIndex = 0; // Update the selected index for Regular 10
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 0,
                  groupValue: _selectedPackagingIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedPackagingIndex = value as int;
                    });
                  },
                ),
                title: Text('Regular 10', style: TextStyle(fontSize: 18)),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedPackagingIndex = 1; // Update the selected index for Eco Friendly 20
                });
              },
              child: ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: _selectedPackagingIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedPackagingIndex = value as int;
                    });
                  },
                ),
                title: Text('Eco Friendly 20', style: TextStyle(fontSize: 18)),
              ),
            ),

            Divider(),



            Container(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Tiffin Price : 2200',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3), // Add some vertical spacing between the two text widgets
                  Text(
                    'Discount : 200',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3), // Add some vertical spacing between the two text widgets
                  Text(
                    'Packaging : 150',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3), // Add some vertical spacing between the two text widgets
                  Text(
                    'Delivery : 50',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 3), // Add some vertical spacing between the two text widgets
                  Text(
                    'Sub Total : 2200',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16.0),

              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Coupon code',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 16.0),

              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Place order',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                     // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
SizedBox(height: 30,),



            // Additional Content
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),


              child: AdditionalContent(),
            ),

          ],
        ),
      ),
    );
  }

  // Helper function to build week days dynamically
  List<Widget> _buildWeekDays() {
    List<Widget> days = [];
    DateTime today = DateTime.now();
    for (int i = 0; i < 7; i++) {
      DateTime date = today.add(Duration(days: i));
      days.add(
        Column(
          children: [
            Text(
              DateFormat('dd MMM').format(date),
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Text(
              DateFormat('EEE').format(date),
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }
    return days;
  }
}

