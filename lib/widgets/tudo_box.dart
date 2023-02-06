import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoDiscriptBox extends StatelessWidget {
  const TodoDiscriptBox({super.key});

  @override
  Widget build(BuildContext context) {
    var _heightDevice = MediaQuery.of(context).size.height;
    var _widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: _heightDevice * 0.2,
      width: _widthDevice,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 14.0, bottom: 14.0, top: 14.0, right: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Welcome to TickTick Task',
                  style: GoogleFonts.inter(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Text(
                  'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        //  backgroundColor: Color(0xff24966D),
                        backgroundColor: Color(0xff219680),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70.0),
                        ),
                        side: BorderSide(
                            width: 2.0,
                            color: Color.fromRGBO(255, 255, 255, 0.3))),
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                    ),
                    label: Text(
                      'Watch Video',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                        color: Color(0xffFFFFFF),
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
              right: -15.0,
              bottom: -17.0,
              child: Image.asset("images/icon for banner.png")),
        ],
        clipBehavior: Clip.none,
      ),
    );
  }
}
