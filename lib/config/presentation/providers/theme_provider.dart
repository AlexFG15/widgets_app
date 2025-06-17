import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider<bool>((ref) => false);

final selectColorProvider = StateProvider((ref) => 0);

// Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);
