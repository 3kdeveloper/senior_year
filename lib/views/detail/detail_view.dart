import 'package:flutter/material.dart';
import 'package:size_adapter/size_adapter.dart';

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
                  onTap: () {},
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