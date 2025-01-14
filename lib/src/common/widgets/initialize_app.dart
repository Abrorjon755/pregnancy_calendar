import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/data/home_repository.dart';
import '../constants/constants.dart';
import '../dependency/dependency.dart';

class InitializeApp {
  const InitializeApp._();

  static Future<AppDependency> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final shp = await SharedPreferences.getInstance();

    final theme = shp.getBool(Constants.theme) ?? true;
    final locale = shp.getString(Constants.locale) ?? 'en';

    final IHomeRepository homeRepository = HomeRepositoryImpl();

    return AppDependency(
      theme: theme,
      locale: locale,
      shp: shp,
      homeRepository: homeRepository,
    );
  }
}
