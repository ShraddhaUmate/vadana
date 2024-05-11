import 'package:flutter/material.dart';

class AdditionalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 0),
      width: 1500,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/images/vandana_app_logo.png',
                  width: 200,
                  height: 200,
                ),
                // SizedBox(height: 8),
                Text(
                  'Vandana tiffin service is Best tiffin service in pune. our aim is to serve you better.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'USEFUL LINKS',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CONTACT US',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 5),
                    Text(
                      '1234567890',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 5),
                    Text(
                      'abc123@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 5),
                    Text(
                      ' XYZ Pvt Ltd. D.Y.Patil College Road,\nAkurdi, Pune 411044 ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
