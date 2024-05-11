import 'package:flutter/material.dart';
import 'package:vadana/custom_scaffold.dart';
import 'package:vadana/additional_content.dart';
import 'package:vadana/second_page.dart';
import 'package:vadana/fourth_page.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



class Home_Page extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home_Page> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, dynamic>> _categoryList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://softhubtechno.com/cloud_kitchen/api/category_list.php'));
    final responseData = json.decode(response.body);
    if (responseData['status'] == 'success') {
      setState(() {
        _categoryList = List<Map<String, dynamic>>.from(
            responseData['category_list']); // Parsing the category list
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 270,
                    child: PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.97,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/images/thali.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'Everyday',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryContainer(_categoryList.length > 0
                          ? _categoryList[0]['category_name']
                          : 'Food', _categoryList.length > 0
                          ? _categoryList[0]['category_image']
                          : 'lib/images/thali.jpeg'),
                      SizedBox(width: 150),
                      _buildCategoryContainer(_categoryList.length > 1
                          ? _categoryList[1]['category_name']
                          : 'Tiffin', _categoryList.length > 1
                          ? _categoryList[1]['category_image']
                          : 'lib/images/thali.jpeg'),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                AdditionalContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryContainer(String categoryName, String categoryImage) {
    return GestureDetector(
      onTap: () {
        if (categoryName == 'Food') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Second_Page(),
            ),
          );
        } else if (categoryName == 'Tiffin') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Fourth_Page(),
            ),
          );
        }
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(90),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                categoryImage,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 70),
            Text(
              categoryName,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
