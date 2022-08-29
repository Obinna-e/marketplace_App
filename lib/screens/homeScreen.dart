import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_app/widget/artWorkCard.dart';
import '../widget/customAppBar.dart';
import '../widget/sectionOptions.dart';
import '../widget/bottomNavBar.dart';
import '../constants/header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Header(
                title: 'Discover Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  SectionOptions(
                    title: 'Drop Price',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SectionOptions(
                    title: 'Popular',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SectionOptions(
                    title: 'Following',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SectionOptions(
                    title: 'News',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            buildCard(),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Header(title: 'Popular Seller'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 179, 209, 234),
        ),
      ),
      bottomNavigationBar: BottomNavBar(context),
    );
  }
}
