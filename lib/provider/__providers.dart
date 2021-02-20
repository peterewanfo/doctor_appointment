import 'package:hooks_riverpod/all.dart';

class AppThemeState extends StateNotifier<bool>{
  AppThemeState(): super(false);

  void setLightTheme() => state = true;
  void setDarkTheme() => state = false;

}

final appThemeStateNotifier = StateNotifierProvider((ref) => AppThemeState() );

final viewTypeProvider = StateProvider<ViewType>((ref) {
  return ViewType.Grid;
});

enum ViewType { Grid, Linear }
