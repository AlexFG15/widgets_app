import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un boolean
final themeProvider = StateProvider<bool>((ref) => false);

// un Int
final selectColorProvider = StateProvider((ref) => 0);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// controller o Notifiert
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDrakMode() {
    state = state.copyWith(isDarkmode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
