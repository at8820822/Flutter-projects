import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  final Widget? icon;
  final double? fontSize;
  const CustomButton(
      {Key? key, required this.buttonText, required this.onTap, this.icon,
      this.fontSize
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: icon ??
          Container(
            alignment: Alignment.center,
            width: 90,
            height: 95,
            color: Colors.transparent,
            child: icon??Text(
              buttonText,
              style: GoogleFonts.arefRuqaa(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.normal,
                  fontSize:fontSize?? 24),
            ),
          ),
    );
  }
}
