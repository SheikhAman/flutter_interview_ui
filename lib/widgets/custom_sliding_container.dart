import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSlidingContainer extends StatelessWidget {
  final img, title, date;
  CustomSlidingContainer(
      {required this.img, required this.title, required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Container(
        width: widthDevice * 0.4,

        //  padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: heightDevice * 0.05,
                  width: heightDevice * 0.06,
                  child: Image.asset(img)),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                ),
              ),
              Text(
                date,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.0,
                    color: Color(0xff042e2b).withOpacity(0.5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
