import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/modules/main_page/first_page.dart';
import 'package:movie_guidlist_new/routes/app_routes.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(ModularApp(module: AppRoute(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}

class MyMainApp extends StatefulWidget {
  const MyMainApp({super.key});

  @override
  State<MyMainApp> createState() => _MyMainAppState();
}

class _MyMainAppState extends State<MyMainApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FirstPage();
  }
}
