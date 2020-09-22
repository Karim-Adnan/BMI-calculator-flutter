import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {

  const IconContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,
          style: GoogleFonts.montserrat(
            textStyle: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}