import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/helper/storage_helper.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  final String themekey = 'Theme Key';
  AppThemeCubit._() : super(LightThemeState());

  static AppThemeCubit instanse = AppThemeCubit._();

  void checkTheme() async {
    dynamic currentTheme = await StorageHelper.get(key: themekey) ?? 'light';

    if (currentTheme == 'light') {
      emit(LightThemeState());
    } else {
      emit(DarkThemeState());
    }
  }

  void changeTheme() async {
    String currentTheme = await StorageHelper.get(key: themekey) ?? 'light';

    if (currentTheme == 'light') {
      await StorageHelper.put(key: themekey, value: 'dark');

      emit(DarkThemeState());
    } else {
      await StorageHelper.put(key: themekey, value: 'light');

      emit(LightThemeState());
    }
  }
}
