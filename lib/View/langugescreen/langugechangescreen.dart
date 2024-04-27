import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Languges { english, urdu }

class SelectLangugeScreen extends StatelessWidget {
  const SelectLangugeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF26993F),
            Color(0xFF042D0D),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Spacer(),
            Container(
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  const CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/images/us_flag.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'English',
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10.0,
            // ),
            // Container(
            //   height: 80,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(20.0),
            //     ),
            //   ),
            //   child: Row(
            //     children: [
            //       const SizedBox(
            //         width: 20.0,
            //       ),
            //       const CircleAvatar(
            //         radius: 27,
            //         backgroundColor: Colors.black,
            //         child: CircleAvatar(
            //           radius: 26,
            //           backgroundImage:
            //               AssetImage('assets/images/pakistan_flag.png'),
            //         ),
            //       ),
            //       const SizedBox(
            //         width: 20.0,
            //       ),
            //       Text(
            //         'Urdu',
            //         style: GoogleFonts.robotoSlab(
            //           textStyle: const TextStyle(
            //               fontSize: 20.0,
            //               color: Colors.black,
            //               decoration: TextDecoration.none),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const Spacer(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: OutlinedButton.icon(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.white),
                  ),
                ),
                icon: const Icon(Icons.translate, color: Colors.white),
                label: Text(
                  'Change Languge',
                  style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
