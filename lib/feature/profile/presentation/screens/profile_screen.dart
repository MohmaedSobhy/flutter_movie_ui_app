import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/controller/app_theme_cubit.dart';
import 'package:movie_app/core/utils/app_string.dart';
import 'package:movie_app/core/widgets/custome_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: CustomeAppBar(
          title: AppString.profile,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(),
        ],
      ),
    );
  }
}
