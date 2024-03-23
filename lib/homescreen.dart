import 'package:flutter/material.dart';
import 'package:localization_app/controller/languge_change_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum Languges { english, urdu }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.appBarTitle,
        ), // English text
        actions: [
          Consumer<LangugeChangeProvider>(
            builder: (context, provider, child) {
              return PopupMenuButton(
                onSelected: (Languges iteam) {
                  if (Languges.english.name == iteam.name) {
                    provider.chageLanguge(const Locale('en'));
                  } else {
                    provider.chageLanguge(const Locale('ur'));
                  }
                },
                itemBuilder: (context) => <PopupMenuEntry<Languges>>[
                  const PopupMenuItem(
                    value: Languges.english,
                    child: Text('English'),
                  ),
                  const PopupMenuItem(
                    value: Languges.urdu,
                    child: Text('اردو'),
                  ),
                ],
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.name, // English text
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
