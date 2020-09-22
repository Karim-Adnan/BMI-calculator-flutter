import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(buttonTitle,
            style: GoogleFonts.montserrat(textStyle: kLargeButtonTextStyle),
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}