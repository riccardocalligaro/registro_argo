import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:registro_argo/presentation/global/theme/app_themes.dart';
import 'package:registro_argo/utils/constants/prefs_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  //static const String DARK_THEME = "ThemeBloc_DARK_THEME";

  static ThemeBloc _instance;

  SharedPreferences prefs;

  ThemeBloc._() {
    _loadSettings();
  }

  static ThemeBloc get instance {
    if (_instance == null) {
      _instance = ThemeBloc._();
    }
    return _instance;
  }

  @override
  ThemeState get initialState => ThemeState(
        materialThemeData: materialThemeData[AppTheme.Dark],
        cupertinoThemeData: cupertinoThemeData[AppTheme.Dark],
      );

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      bool darkTheme = event.theme == AppTheme.Dark;
      await _saveSettings(darkTheme);
      yield ThemeState(
          materialThemeData: materialThemeData[event.theme],
          cupertinoThemeData: cupertinoThemeData[event.theme]);
    }
  }

  _loadSettings() async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
    bool _darkTheme = prefs.getBool(PrefsConstants.DARK_THEME) ?? false;
    add(ThemeChanged(theme: _darkTheme ? AppTheme.Dark : AppTheme.Light));
    return _darkTheme;
  }

  _saveSettings(bool darkTheme) async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
    await prefs.setBool(PrefsConstants.DARK_THEME, darkTheme);
  }
}
