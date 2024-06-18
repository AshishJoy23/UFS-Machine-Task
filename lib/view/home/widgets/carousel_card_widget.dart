import 'package:flutter/material.dart';

class CarouselCardWidget extends StatelessWidget {
  const CarouselCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: height * 0.33,
      width: width * 0.55,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: height * 0.14,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/courses.png',
                ),
              ),
            ),
          ),
          const Spacer(),
          const Row(
            children: [
              Text(
                'OET Beginner special\nclass and Perparation\nTips',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(
                Icons.book_online,
                color: Colors.grey,
                size: 14,
              ),
              const Text(
                '54',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: width * 0.06,
              ),
              const Icon(
                Icons.watch_later_outlined,
                color: Colors.grey,
                size: 14,
              ),
              const Text(
                '48 Hrs',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Text(
                '₹ 5000',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Icon(
                Icons.star_rate,
                color: Color(0xffFFC025),
                size: 20,
              ),
              Text(
                ' 4.5',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
