import 'package:get/get.dart';
import 'package:notibuku/ui/routes/routes.dart';
import 'package:notibuku/ui/views/notes/create_note.dart';
import 'package:notibuku/ui/views/settings/settings.dart';

import '../views/dashboard.dart';
import '../views/splash/splash.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(name: AppRoutes.splash, page: () => const Splash()),
    GetPage(name: AppRoutes.home, page: () => const Dashboard()),
    GetPage(name: AppRoutes.createNote, page: () => const CreateNote()),
    GetPage(name: AppRoutes.settings, page: () => const Settings()),
  ];
}
