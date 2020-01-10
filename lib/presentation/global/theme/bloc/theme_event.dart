import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:registro_argo/presentation/global/theme/app_themes.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({@required this.theme});
}
