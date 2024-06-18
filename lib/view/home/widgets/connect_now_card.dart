import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnectNowcard extends StatelessWidget {
  const ConnectNowcard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.136,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xffE3E7EE).withOpacity(0.3),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.15,
            width: width * 0.38,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xffFFFFFF).withOpacity(0.9),
                    const Color(0xffFFFFFF).withOpacity(0.7),
                    const Color(0xffFFFFFF).withOpacity(0.3),
                    const Color(0xffFFFFFF).withOpacity(0.1),
                  ]),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'Find a Mentor',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Anywhere, Anytime!',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                Container(
                  height: width * 0.09,
                  width: width * 0.31,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xff1681E4),
                        Color(0xff0056D6),
                      ]),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'Connect Now',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: width * 0.55,
            foregroundDecoration: BoxDecoration(
              color: const Color(0xffE3E7EE).withOpacity(0.3),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/connect_now.png',
                ),
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
