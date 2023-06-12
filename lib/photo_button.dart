import 'package:flutter/material.dart';

class PhotoButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;

  const PhotoButton({
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 40.0) / 3;

    return SizedBox(
      width: itemWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(bottom: 10),
          primary: Colors.deepOrange,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imageUrl,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              'Milky Way',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}