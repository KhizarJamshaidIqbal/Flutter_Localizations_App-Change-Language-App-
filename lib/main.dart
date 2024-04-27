import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/langugescreen/langugechangescreen.dart';
import 'controller/languge_change_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String languageCode = sp.getString('langugeCode') ?? '';
  runApp(MyApp(
    local: languageCode,
  ));
}

class MyApp extends StatelessWidget {
  final String local;
  const MyApp({
    super.key,
    required this.local,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => LangugeChangeProvider(),
          )
        ],
        child: Consumer<LangugeChangeProvider>(
          builder: (context, provider, child) {
            if (provider.languageCode == null) {
              provider.chageLanguge(
                  local.isEmpty ? const Locale('en') : Locale(local));
            }
            return MaterialApp(
              title: 'Localizations Sample App',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              locale: provider.languageCode ?? const Locale('en'),
              localizationsDelegates: const [
                AppLocalizations.delegate, // Add this line
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), // English
                Locale('ur'), // Urdu
              ],
              home: const SelectLangugeScreen(),
            );
          },
        )
        );
  }
}
