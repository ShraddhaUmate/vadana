import 'package:flutter/material.dart';
import 'package:vadana/third_page.dart';
import 'package:vadana/custom_scaffold.dart';
import 'package:vadana/additional_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Second_Page(),
    );
  }
}

class Second_Page extends StatelessWidget {

  final List<String> images = [
    'lib/images/thali.jpeg',
    'lib/images/pulav.jpg',
    'lib/images/paneer.jpg',
    'lib/images/misal.jpeg',
    'lib/images/paratha.jpg',

  ];

  final List<String> texts = [
    'Thali',
    'Pulav',
    'Paneer',
    'Misal',
    'Paratha',

  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 30.0,
                runSpacing: 30.0,
                children: _buildContainers(context, images, texts),
              ),
            ),
            AdditionalContent(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildContainers(BuildContext context, List<String> images, List<String> texts) {
    assert(images.length == texts.length);

    List<Widget> widgets = [];

    for (int i = 0; i < images.length; i++) {
      widgets.add(
        GestureDetector(
          onTap: () {
            // Navigate to third page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Third_Page()),
            );
          },
          child: Container(
            height: 320,
            width: 300,
            child: Card(
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      images[i],
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      texts[i],
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return widgets;
  }
}
