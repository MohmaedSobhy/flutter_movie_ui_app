import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/controller/app_theme_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text('Hello world'),
          onPressed: () {
            AppThemeCubit.instanse.changeTheme();
          },
        ),
      ],
    );
  }
}
