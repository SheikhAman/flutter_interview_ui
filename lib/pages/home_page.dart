import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_test/widgets/custom_listtile.dart';
import 'package:ui_test/widgets/custom_sliding_container.dart';
import 'package:ui_test/widgets/scrolling_listtile.dart';

import '../widgets/tudo_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: heightDevice,
          child: Column(
            children: [
              SizedBox(
                height: heightDevice * 0.45,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                      ),
                      alignment: Alignment.topCenter,
                      height: heightDevice * 0.43,
                      width: widthDevice,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(4, 46, 43, 1),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: heightDevice * 0.013,
                          ),
                          // first custom listile
                          const CustomListTile(),
                          // second box part
                          SizedBox(
                            height: heightDevice * 0.013,
                          ),
                          // custom tudo box
                          TodoDiscriptBox(),
                          SizedBox(
                            height: heightDevice * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reminder Task',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              Text(
                                'See All',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xffFFFFFF).withOpacity(0.7),
                                ),
                              )
                            ],
                          ),

                          // slinding section
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -14.0,
                      child: Container(
                        height: heightDevice * 0.14,
                        width: widthDevice,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: widthDevice * 0.025,
                            ),
                            CustomSlidingContainer(
                                img: "images/to-do-list.png",
                                title: 'Online Class Routine',
                                date: 'Save Date: 10/12/2022'),
                            SizedBox(
                              width: widthDevice * 0.007,
                            ),
                            CustomSlidingContainer(
                                img: "images/to-do-list2.png",
                                title: 'Office Work List',
                                date: 'Save Date: 15/12/2022'),
                            SizedBox(
                              width: widthDevice * 0.007,
                            ),
                            CustomSlidingContainer(
                                img: "images/to-do-list3.png",
                                title: 'Day Task',
                                date: 'Save Date: 12/12/2022'),
                            SizedBox(
                              width: widthDevice * 0.03,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 14.0),
                height: heightDevice * 0.42,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All Tasks',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          Text(
                            'See All',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Color(0xff042e2b).withOpacity(0.7)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        shrinkWrap: true,
                        children: [
                          ScrollingListTile(),
                          ScrollingListTile(),
                          ScrollingListTile(),
                          ScrollingListTile(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
