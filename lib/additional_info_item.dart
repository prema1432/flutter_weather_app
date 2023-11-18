import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  const AdditionalInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.water_drop,
          size: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Humidity',
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '94',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
