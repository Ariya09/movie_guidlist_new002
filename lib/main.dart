import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/routes/app_routes.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

void main() {
  runApp(ModularApp(module: AppRoute(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyMainApp(),
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the Column vertically
            children: [
              ButtonStyeCustom('ล็อคอิน', ''),
              ButtonStyeCustom('ล็อคอิน Facebook', '')
            ],
          ),
        ),
      ),
    );
  }
}
