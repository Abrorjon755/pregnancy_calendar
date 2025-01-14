import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../l10n/generated/l10n.dart';
import '../router/router.dart';
import '../style/app_theme.dart';
import '../util/extension/context_extension.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
      ],
      theme:
          context.dependency.theme ? AppTheme.lightTheme : AppTheme.darkTheme,
      locale: Locale(context.dependency.locale),
    );
  }
}
