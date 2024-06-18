import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(3),
      height: height * 0.08,
      width: width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.08,
            width: width * 0.2,
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    'assets/home.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff1863D3),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    'assets/book.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Text(
                  'My Courses',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    'assets/mentors.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Text(
                  'Mentors',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    'assets/profile.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
