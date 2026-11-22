import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  String ? image;
  String label;

  SocialMediaCard({super.key, this.image,required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image ?? "assets/images/placeholder.png",
              height: 40,
              width: 40,
            ),
            SizedBox(width: 10,),
            Text(label)
          ],

        ),
      ),
    );
  }
}
