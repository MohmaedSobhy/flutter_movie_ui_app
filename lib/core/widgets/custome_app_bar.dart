import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final String imageAsset;
  const CustomeAppBar({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10, top: 10),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            child: SvgPicture.asset(
              imageAsset,
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
