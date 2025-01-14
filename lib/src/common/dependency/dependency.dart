import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/data/home_repository.dart';

class AppDependency {
  const AppDependency({
    required this.theme,
    required this.locale,
    required this.shp,
    required this.homeRepository,
  });

  final bool theme;
  final String locale;

  final SharedPreferences shp;
  final IHomeRepository homeRepository;
}
