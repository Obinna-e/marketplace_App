import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BottomAppBar BottomNavBar(BuildContext context) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 15,
    elevation: 10.0,
    color: Colors.white,
    child: IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.primary),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 28,
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    ),
  );
}
