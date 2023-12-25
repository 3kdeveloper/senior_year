import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:size_adapter/size_adapter.dart';
import 'package:url_launcher/url_launcher.dart';

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

// HOME VIEW CLASS
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/header_image.png',
            height: 300.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tips you should know',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                'Before Your \nSenior Year',
                style: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFFAD9659)),
              ),
              SizedBox(height: 2.h),
              Text(
                'Click here to start:',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60.h),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DetailView())),
                  child: Text(
                    'START',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          Image.asset(
            'assets/bottom_image.png',
            height: 210.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

// DETAIL VIEW CLASS
class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Text(
                'Tips you should know',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                'Before Your Senior Year',
                style: TextStyle(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFAD9659),
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 100.h),
              const BulletTextWIdget(text: '• Plan ahead'),
              const BulletTextWIdget(text: '• Stay organized'),
              const BulletTextWIdget(text: '• Prioritize self-care'),
              const BulletTextWIdget(text: '• Seek guidance'),
              const BulletTextWIdget(text: '• Get involved'),
              const BulletTextWIdget(
                  text: '• Research colleges \nand scholarships'),
              const BulletTextWIdget(text: '• Enjoy the journey'),
              SizedBox(height: 70.h),
              Text(
                'To have more explination \nClick Here:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.sp,
                  color: const Color(0xFFAD9659),
                ),
              ),
              SizedBox(height: 60.h),
              GestureDetector(
                  onTap: () => _openYoutubeVideo(),
                  child: Text(
                    'Click Here',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openYoutubeVideo() async {
    String youtubeVideoUrl = 'https://www.youtube.com/watch?v=qVaiScmnc9s';
    await _lunchUrl(target: youtubeVideoUrl, url: 'https');
  }

  /// Url Launcher
  Future<void> _lunchUrl({required String target, required String url}) async {
    final Uri uri = Uri.parse('$target:$url');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}

class BulletTextWIdget extends StatelessWidget {
  const BulletTextWIdget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 36.sp,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
