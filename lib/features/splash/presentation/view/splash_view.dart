import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/features/to_do/presentation/to_do.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(left: 20, top: 80),
            child: Row(
              children: [
                Text(
                  'To',
                  style: GoogleFonts.poppins(
                    color: Colors.deepOrange,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'dos',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.only(left: 20, top: 60),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Manage Your\nTeam & Everything\nwith ',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: 'Todos',
                        style: GoogleFonts.poppins(
                          color: Colors.deepOrange,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.asset('assets/images/onboarding.png'),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Easily create to-do lists or to-do lists',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'with friends, coworkers or for personal',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  'use with Todos',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Todo()),
              );
            },
            child: Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.redAccent,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    blurStyle: BlurStyle.normal,
                    color: Colors.red.shade200,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
