import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ToggleTheme>(_onToggleTheme);
  }

  void _onToggleTheme(ToggleTheme event, Emitter<ThemeState> emit) {
    final brightness = PlatformDispatcher.instance.platformBrightness;
    ThemeData themeData;

    if (brightness == Brightness.dark) {
      themeData = ThemeData.dark();
    } else {
      themeData = ThemeData.light();
    }

    emit(ThemeChanged(themeData: themeData));
  }
}
