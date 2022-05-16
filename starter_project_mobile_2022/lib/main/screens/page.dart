import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens/page.dart';

class Myslider extends StatelessWidget {
  final _contorller = PageController();
  @override
  Widget build(BuildContext context) {
    double total = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Carousel Slider'),
      // ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: total * 0.20,
                      child: Card(
                          elevation: 40,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/elon.jpg',
                                fit: BoxFit.cover),
                          )),
                    ),
                    SizedBox(
                      width: total * 0.55,
                      height: 200,
                      child: Card(
                          elevation: 40,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/images/virtual.webp',
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: total * 0.55,
                      child: Card(
                          elevation: 40,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset(
                                'assets/images/Donald-Trump.webp',
                                fit: BoxFit.cover),
                          )),
                    ),
                    SizedBox(
                      width: total * 0.20,
                      height: 200,
                      child: Card(
                          elevation: 40,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image.asset(
                              'assets/images/sea.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  'Read the article you want instantly',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  'You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.',
                  style: TextStyle(
                    color: Color(0xFF2D4379),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
