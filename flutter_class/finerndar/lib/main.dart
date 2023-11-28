import 'package:finerndar/color_variable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/bg.png'),
              Container(
                width: 350,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const AppText(
                      title: 'Welcome back!',
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                    const AppText(
                      title: 'Log in to continue',
                      color: AppColor.darkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    const SizedBox(height: 50),
                    const CustomTextFormField(
                      hintText: 'Enter your Email',
                      iconData: Icons.mail,
                    ),
                    const SizedBox(height: 30),
                    const CustomTextFormField(
                      hintText: 'Enter  Password',
                      iconData: Icons.lock,
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Container(
                        height: 68,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF53179A), Color(0xFFA269E6)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x72000000),
                              blurRadius: 9,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const AppText(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          title: 'Log In',
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText(
                          color: AppColor.darkColor.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          title: 'Forgot Password?',
                        ),
                      ],
                    ),
                    const SizedBox(height: 11),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            AppText(
                              color: AppColor.darkColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              title: 'Do not have an account?',
                            ),
                            SizedBox(height: 11),
                            AppText(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              title: 'Sign Up',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final IconData iconData;
  final String hintText;
  const CustomTextFormField({
    super.key,
    required this.iconData,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(iconData, size: 20),
          prefixIconColor: AppColor.primaryColor,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 15, color: AppColor.darkColor.withOpacity(0.4)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.primaryColor),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}

class AppText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const AppText(
      {super.key,
      this.title = '',
      required this.color,
      required this.fontWeight,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
