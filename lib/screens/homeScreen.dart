import 'package:flutter/material.dart';
import '../widget/customAppBar.dart';
import '../widget/sectionOptions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Text(
                'Discover Now',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
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
            )
          ],
        ),
      ),
    );
  }
}
