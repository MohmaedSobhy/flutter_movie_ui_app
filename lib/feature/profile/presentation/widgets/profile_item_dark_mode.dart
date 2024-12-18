import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/feature/profile/data/model/profile_option_model.dart';

class ProfileItemDarkMode extends StatelessWidget {
  final ProfileOptionModel profileOptionModel;
  final VoidCallback onTap;
  const ProfileItemDarkMode({
    super.key,
    required this.onTap,
    required this.profileOptionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        onTap: onTap,
      ),
    );
  }
}
