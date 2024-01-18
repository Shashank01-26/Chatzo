import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body:Column(
        children: [
          Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:50,
                      vertical:10
                  ),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color: Coloors.greenDark,
                  ),
                ),
              ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Welcome to WhatsApp",
                    style:TextStyle(
                      fontSize:22,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: "Read Our",
                          style: TextStyle(
                            color: Coloors.greyDark,
                            height:1.5,
                          ),
                          children: [
                            TextSpan(
                              text: " Privacy Policy",
                              style:TextStyle(
                                color: Coloors.blueDark,
                              ),
                            ),
                            TextSpan(
                              text: '\nTap "Agree and continue" to accept the',
                            ),
                            TextSpan(
                              text: "Terms of Services",
                            ),
                          ]
                        ),
                    ),
                  ),
                    SizedBox(
                      height: 42,
                      width:MediaQuery.of(context).size.width - 200,
                      child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Coloors.greenDark,
                            foregroundColor: Coloors.backgroundDark,
                            splashFactory: NoSplash.splashFactory,
                            elevation: 2,
                            shadowColor: Colors.transparent,
                        ),
                        child: const Text("Agree and continue"),
                   ),
                    ),
                  const SizedBox(height:50),
                  Material(
                    color:Color(0xff182229),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(20),
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: const Color(0xFF09141A),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[
                          Icon(
                            Icons.language,
                            color: Coloors.greyDark,
                          ),
                          const SizedBox(width:15),
                          Text(
                              "English",
                            style:TextStyle(
                              color: Coloors.greyDark,
                            ),
                          ),
                          const SizedBox(width:15),
                          Icon(
                              Icons.keyboard_arrow_down,
                              color: Coloors.greenDark,
                          ),
                        ]
                      )
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
