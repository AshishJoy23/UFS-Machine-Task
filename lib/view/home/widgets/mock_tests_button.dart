import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MockTestButton extends StatelessWidget {
  const MockTestButton({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const Row(
          children: [
            ButtonWidget(icon: Icons.menu_book, title: 'Reading'),
            SizedBox(
              width: 10,
            ),
            ButtonWidget(icon: Icons.headphones, title: 'Listening'),
          ],
        ),
        SizedBox(
          height: height * 0.012,
        ),
        const Row(
          children: [
            ButtonWidget(icon: CupertinoIcons.pen, title: 'Writing'),
            SizedBox(
              width: 10,
            ),
            ButtonWidget(icon: Icons.person_outline, title: 'Speaking'),
          ],
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(
        left: 3,
        right: 3,
      ),
      height: height * 0.055,
      width: width * 0.32,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: width * 0.09,
            height: width * 0.09,
            decoration: BoxDecoration(
              color: const Color(0xffE3E7EE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Icon(
              icon,
              size: 20,
            )),
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
