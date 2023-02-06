import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollingListTile extends StatelessWidget {
  const ScrollingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.white,
        leading: Image.asset("images/to-do-list.png"),
        title: Text(
          "Online Class Routine",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
          ),
        ),
        subtitle: Text(
          'Save Date: 10/12/2022',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 10.0,
              color: Color(0xff042e2b).withOpacity(0.5)),
        ),
      ),
    );
  }
}
