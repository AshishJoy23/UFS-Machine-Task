import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width,
          height: height * 0.28,
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xff1863D3).withOpacity(1),
                    const Color(0xff1863D3).withOpacity(0.1),
                  ]),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          // color: Colors.amber,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/connect_now.png',
                ),
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        Positioned(
          top: height * 0.06,
          child: Container(
            padding: EdgeInsets.only(
              left: width * 0.035,
              right: width * 0.035,
            ),
            width: width,
            height: height * 0.06,
            child: Row(
              children: [
                Container(
                  height: width * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      alignment: Alignment.centerRight,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/profile.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Ajay',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    // SizedBox(
                    //   height: 3,
                    // ),
                    Text(
                      'Tuesday, 23 April 2024',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  height: width * 0.11,
                  width: width * 0.25,
                  child: const Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.white,
                        size: 26,
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: height * 0.14,
          child: Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff1863D3).withOpacity(0.1),
                      const Color(0xff1863D3).withOpacity(0.5),
                    ]),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                )),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
              image: DecorationImage(
                alignment: Alignment.centerRight,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/wheeel.png',
                ),
              ),
            ),
            height: height * 0.2,
            width: width * 0.4,
          ),
        ),
        Positioned(
          left: 10,
          top: height * 0.17,
          child: Container(
            width: width,
            height: height * 0.13,
            padding: EdgeInsets.only(
              left: width * 0.03,
              right: width * 0.05,
            ),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/boy.png',
                      ),
                    ),
                  ),
                  height: height * 0.12,
                  width: width * 0.26,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Hello, I’m Breff',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Ask all your career & exams\ndoubts to me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffFFFFFF),
                        Color(0xffDEEFFF),
                        Color(0xffADC7EF),
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  height: width * 0.08,
                  width: width * 0.16,
                  child: const Center(
                    child: Text(
                      'Ask',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
