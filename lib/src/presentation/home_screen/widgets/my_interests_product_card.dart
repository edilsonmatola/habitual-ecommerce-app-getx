import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyInterestsProductCard extends StatelessWidget {
  const MyInterestsProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 80,
        height: 80,
        child: CachedNetworkImage(
          imageUrl:
              'https://media.croma.com/image/upload/v1685969130/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256606_ufqgl3.png',
        ),
      ),
      onTap: () {},
    );
  }
}
