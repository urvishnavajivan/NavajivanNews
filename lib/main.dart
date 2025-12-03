// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import the generated file
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/saved_articles_screen.dart';
import 'screens/phone_auth_screen.dart';
import 'utils/app_theme.dart';

void main() {
  // Placeholder for Firebase initialization.
  // In a real app, you would initialize Firebase here.
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const NavajivanNewsApp());
}

class NavajivanNewsApp extends StatelessWidget {
  const NavajivanNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navajivan News',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Use system theme settings
      localizationsDelegates: const [
        // AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('gu', ''), // Gujarati
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/search': (context) => const SearchScreen(),
        '/saved': (context) => const SavedArticlesScreen(),
        '/auth': (context) => const PhoneAuthScreen(),
      },
    );
  }
}
