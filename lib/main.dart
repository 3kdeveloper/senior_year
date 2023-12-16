import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senior_year/views/home/home_view.dart';
import 'package:size_adapter/size_adapter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const SizeAdapter(
    designSize: Size(430.0, 932.0),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Senior Year',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD9D9D9)),
        scaffoldBackgroundColor: const Color(0xFFD9D9D9),
      ),
      home: const HomeView(),
    );
  }
}
