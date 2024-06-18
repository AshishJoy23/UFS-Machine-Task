import 'package:flutter/material.dart';

class ExploreButtonWidget extends StatelessWidget {
  const ExploreButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    return Container(
      height: width * 0.12,
      width: width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color(0xff1681E4),
            Color(0xff0056D6),
          ]),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        children: [
          Spacer(),
          Text(
            'Explore Courses  ',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 14,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

