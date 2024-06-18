import 'package:flutter/material.dart';
import 'package:ufs_test/view/screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE3E7EE),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeBanner(),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleWidget(title: 'Recently played',),
                  const SizedBox(
                    height: 5,
                  ),
                  const RecentlyPlayCard(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  //explore button
                  const ExploreButtonWidget(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const ConnectNowcard(),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const TitleWidget(title: 'Mock Tests',),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const MockTestButton(),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  const TitleWidget(title: 'Popular Courses',),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    height: height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const CarouselCardWidget();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

