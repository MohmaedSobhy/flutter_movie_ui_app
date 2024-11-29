import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/storage_helper.dart';
import 'package:movie_app/movie_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageHelper.init();
  runApp(const MovieApp());
}
