import 'package:flutter/material.dart';

Card buildCard() {
  var artist = 'Thy Law';
  var heading = 'Dall-E';
  var subheading = 'Highest Bid';
  var price = '4 ETH';
  var cardImage = NetworkImage(
      'https://cdn.openai.com/labs/images/An%20armchair%20in%20the%20shape%20of%20an%20avocado.webp?v=1');

  return Card(
      elevation: 4.0,
      child: Stack(
        children: [
          Container(
            height: 350.0,
            width: 300,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: 300,
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        artist,
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        subheading,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        heading,
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        price,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
}
