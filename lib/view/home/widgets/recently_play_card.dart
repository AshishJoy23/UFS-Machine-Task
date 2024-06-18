import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentlyPlayCard extends StatelessWidget {
  const RecentlyPlayCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/recently.png',
                    ),
                  ),
                ),
                height: height,
                width: width * 0.25,
              ),
              const Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Icon(
                  CupertinoIcons.play_arrow_solid,
                  color: Colors.white,
                  size: 34,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'OET Beginner special class\nand Preparation Tips',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                '20:45 / 35 :12',
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
              Spacer(),
            ],
          ),
          const Spacer(),
          const Spacer(),
          Container(
            height: width * 0.1,
            width: width * 0.1,
            child: const Stack(
              children: [
                CircularProgressIndicator(
                  backgroundColor: Colors.blue,
                  color: Colors.grey,
                  value: 0.65,
                ),
                Positioned(
                  top: 10,
                  bottom: 0,
                  left: 7,
                  right: 0,
                  child: Text(
                    '35%',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
