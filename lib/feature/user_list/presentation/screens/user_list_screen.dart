import 'package:flutter/material.dart';
import 'package:movie_app/feature/user_list/presentation/views/user_list_app_bar.dart';
import 'package:movie_app/feature/user_list/presentation/views/user_list_empty.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: UserListAppBar(),
      ),
      body: Center(child: UserListEmpty()),
    );
  }
}
