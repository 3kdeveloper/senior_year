import 'package:flutter/material.dart';
import 'package:senior_year/views/detail/detail_view.dart';
import 'package:size_adapter/size_adapter.dart';

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
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60.h),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DetailView())),
                  child: Text(
                    'START',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
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
