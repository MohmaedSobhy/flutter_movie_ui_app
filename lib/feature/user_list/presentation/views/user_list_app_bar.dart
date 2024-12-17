import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/theme/app_color.dart';
import 'package:movie_app/core/utils/app_images_assets.dart';
import 'package:movie_app/core/utils/app_string.dart';

class UserListAppBar extends StatelessWidget {
  const UserListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10, top: 10),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            child: SvgPicture.asset(
              AppImageAssets.imagesAppLogo,
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            AppString.myList,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
