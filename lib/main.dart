import 'package:device_preview/device_preview.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/bottom_navigation_bar_page.dart';
import 'package:test_animations/provider/feed_input_provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/utils/theme/dark_theme.dart';
import 'package:test_animations/utils/theme/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // make statusBar transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            lazy: true,
            create: (context) => FeedProvider(),
          ),
          ChangeNotifierProvider(
            lazy: true,
            create: (context) => FeedInputProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexify(
      designHeight: MediaQuery.sizeOf(context).height,
      designWidth: MediaQuery.sizeOf(context).width,
      app: MaterialApp(
        builder: DevicePreview.appBuilder,
        title: 'Test Animations',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: LightTheme.lightTheme,
        darkTheme: DarkTheme.darkTheme,
        themeAnimationCurve: Curves.bounceInOut,
        home: const BottomNavigationBarPage(),
      ),
    );
  }
}
