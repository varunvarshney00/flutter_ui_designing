import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:flutter_ui_designing/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            //custom appbar
            Container(
              margin: const EdgeInsets.only(left: 40, right: 20, top: 25),
              child: SingleChildScrollView(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // SvgPicture.asset('assets/svg/drawer_icon.svg'),
                    Container(
                      height: 59,
                      width: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/user_image.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 135),
                    Icon(Icons.doorbell_rounded, size: 68),
                    GestureDetector(
                        onTap: () {
                          print("Drawer Tapped");
                        },
                        child: Icon(Icons.blur_on_outlined, size: 68)),
                  ],
                ),
              ),
            ),
            //Card Section
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: EdgeInsets.only(left: 40, bottom: 16, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Discover your favourite job.',
                    style: GoogleFonts.inter(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CupertinoSearchTextField(
                    borderRadius: BorderRadius.circular(20),
                  ),


                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Categories',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CarouselSlider(
                    items:[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download5.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Text("varun"),
                      ),
                    ],
                    options: CarouselOptions(
                      height:180.0,
                      autoPlay: true,
                      viewportFraction: .5,
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                    ),
                  ),


                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Recommended',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CarouselSlider(
                    items:[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/download1.jpg'),
                              fit: BoxFit.cover,
                            ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download 4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/download5.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height:180.0,
                      autoPlay: true,
                      viewportFraction: .75,
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MySlider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               height: 400.0,
//             ),
//             items: _source.map((i) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     decoration: BoxDecoration(color: i),
//                   );
//                 },
//               );
//             }).toList(),
//           )),
//     );
//   }
//
//   final List _source = [Colors.red, Colors.black, Colors.yellow];
// }
