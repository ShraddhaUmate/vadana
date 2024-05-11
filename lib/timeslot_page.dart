import 'package:flutter/material.dart';

class Timeslot_Page extends StatefulWidget {
  final List<String> timeSlots;

  Timeslot_Page({required this.timeSlots});

  @override
  _TimeSlotSelectionState createState() => _TimeSlotSelectionState();
}

class _TimeSlotSelectionState extends State<Timeslot_Page> {
  String? _selectedTimeSlot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            _showTimeSlotDialog();
          },
          child: Text(
            _selectedTimeSlot ?? 'Select Time',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  void _showTimeSlotDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Time Slot"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.timeSlots.map((timeSlot) {
              return ListTile(
                title: Text(timeSlot),
                onTap: () {
                  setState(() {
                    _selectedTimeSlot = timeSlot;
                  });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
