import 'package:notibuku/providers/nav_provider.dart';
import 'package:notibuku/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'app_provider.dart';

List<SingleChildWidget> get providers => _providers;

List<SingleChildWidget> _providers = [
  ChangeNotifierProvider(create: (_) => AppProvider()),
  ChangeNotifierProvider(create: (_) => NavProvider()),
  ChangeNotifierProvider(create: (_) => UserProvider()),
];
