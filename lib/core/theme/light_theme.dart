import 'package:project2/imports.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,
  colorScheme: ColorScheme.light(
    primary: AppColors.text1,
    onPrimary: AppColors.text2,
    secondary: AppColors.text3,
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.rubik(fontWeight: FontWeight.w700, fontSize: 25,
    color: AppColors.text1
    )
  )
);