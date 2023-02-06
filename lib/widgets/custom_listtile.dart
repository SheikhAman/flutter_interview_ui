import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hi, Habib 👋',
              style: GoogleFonts.inter(
                fontSize: 18.0,
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Let’s explore your notes",
              style: GoogleFonts.inter(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.7)),
            ),
          ],
        ),
        Image.asset('images/profile.png'),
      ],
    );
  }
}
