import 'package:bloc/bloc.dart';
import 'package:cubit_simple/theme/theme_dark.dart';
import 'package:cubit_simple/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(theme: appThemeLight));

  bool _isDark = false;
  bool get isDark => _isDark;

  void changeTheme() {
    if (_isDark) {
      emit(ThemeState(theme: appThemeLight));
    } else {
      emit(ThemeState(theme: appThemeDark));
    }
    _isDark = !_isDark;
  }
}
