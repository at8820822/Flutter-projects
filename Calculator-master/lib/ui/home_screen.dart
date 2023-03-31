import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/row_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool extraOptionIsVisible = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (size.height > 760)
                SizedBox(
                  height: size.height / 8,
                ),
              Container(
                width: 400,
                height: 760,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding:const EdgeInsets.all(0),
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Column(
                              children: [
                                RowWrapper(list: [
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: 'C',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: 'm+',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '+/-',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: 'X',
                                    icon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 40, top: 15),
                                      child: SvgPicture.asset(
                                        'assets/delete.svg',
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ]),
                                RowWrapper(list: [
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '7',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '8',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '9',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '\u00F7',
                                  ),
                                ]),
                                RowWrapper(list: [
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '4',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '5',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '6',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: 'x',
                                  ),
                                ]),
                                RowWrapper(list: [
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '1',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '2',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '3',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '-',
                                  ),
                                ]),
                                RowWrapper(list: [
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '.',
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    buttonText: '0',
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 180,
                                    height: 95,
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFA4C3C),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Text(
                                        "=",
                                        style: GoogleFonts.arefRuqaa(
                                            color: Colors.white,
                                            fontSize: 25,
                                            height: 1.1),
                                      ),
                                    ),
                                  )
                                ]),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      extraOptionIsVisible = true;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 400,
                                    color: const Color(0xff2B2121),
                                    child: const Icon(
                                      Icons.keyboard_arrow_up,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              width: 400,
                              height: extraOptionIsVisible ? 510 : 0,
                              decoration:
                                  BoxDecoration(color: Color(0xff242424)),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          extraOptionIsVisible = false;
                                        });
                                      },
                                      child: Container(
                                        height: 30,
                                        width: 400,
                                        color: Color(0xff2B2121),
                                        child: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    RowWrapper(list: [
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'CE',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'M-',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'MC',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: '%',
                                      ),
                                    ]),
                                    RowWrapper(list: [
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'sin',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'cos',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'tan',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'Exp',
                                      ),
                                    ]),
                                    RowWrapper(list: [
                                      SizedBox(width: 40),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'x^2',
                                        icon: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'x',
                                              style: GoogleFonts.arefRuqaa(
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 30),
                                            ),
                                            Text(
                                              '2',
                                              style: GoogleFonts.arefRuqaa(
                                                fontFeatures: [
                                                  FontFeature.superscripts(),
                                                ],
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 65,
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'M-',
                                        icon: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'x',
                                              style: GoogleFonts.arefRuqaa(
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 30),
                                            ),
                                            Text(
                                              'y',
                                              style: GoogleFonts.arefRuqaa(
                                                fontFeatures: [
                                                  FontFeature.superscripts(),
                                                ],
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'SQR',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'ln',
                                      ),
                                    ]),
                                    RowWrapper(list: [
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'n!',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'PIE',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'nCr',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'nPr',
                                      ),
                                    ]),
                                    RowWrapper(list: [
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: '(',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: ')',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'log',
                                      ),
                                      CustomButton(
                                        onTap: () {},
                                        buttonText: 'Ans',
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              if (size.height > 760)
                SizedBox(
                  height: size.height / 8,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
