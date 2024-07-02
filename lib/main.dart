import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:notibuku/providers/providers.dart';
import 'package:notibuku/providers/theme_provider.dart';
import 'package:notibuku/ui/routes/pages.dart';
import 'package:notibuku/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isDark =
      (await SharedPreferences.getInstance()).getBool('isDark') ?? false;
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(isDark: isDark, context: context),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context, listen: true);
    return MultiProvider(
      providers: providers,
      builder: (context, child) => GetMaterialApp(
        title: AppData.appName,
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        getPages: AppPages.pages,
      ),
    );
  }
}
