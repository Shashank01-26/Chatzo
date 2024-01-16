import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body:Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:50),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: const Color(0xFF00A884),
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
                            color: Color(0xFF8696A0),
                            height:1.5,
                          ),
                          children: [
                            TextSpan(
                              text: " Privacy Policy",
                              style:TextStyle(
                                color: Color(0xFF53BDEB),
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
                      backgroundColor: Color(0xFF00A884),
                      foregroundColor: Color(0xFF111B21),
                      splashFactory: NoSplash.splashFactory,
                      elevation: 2,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Set your desired radius here
                      ),
                      ),
                      child: const Text("Agree and continue"),
                   ),
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
