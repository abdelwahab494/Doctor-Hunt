import 'dart:ui';
import 'package:project2/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(3.seconds, () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (c) => OnboardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -70,
            child: Container(
              width: 270,
              height: 270,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.primaryColor.withValues(alpha: 0.40),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 140, sigmaY: 140),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.primaryColor.withOpacity(0.40),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),
          Center(
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppImages.logoSVG)
                    .animate()
                    .fadeIn(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                    )
                    .slideY(
                      begin: -0.3,
                      end: 0,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .scale(
                      begin: Offset(0.6, 0.6),
                      end: Offset(1, 1),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                TXT("Doctor Hunt", fontSize: 25, fontWeight: FontWeight.w700)
                
                    .animate(delay: Duration(milliseconds: 1600))
                    .fadeIn(duration: 300.milliseconds)
                    .slideY(
                      begin: 0.5,
                      end: 0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
