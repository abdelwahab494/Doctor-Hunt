import 'dart:ui';
import 'package:project2/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            // Positioned(
            //   top: -100,
            //   left: -70,
            //   child: Container(
            //     width: 270,
            //     height: 270,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: theme.primaryColor.withOpacity(0.40),
            //     ),
            //     child: BackdropFilter(
            //       filter: ImageFilter.blur(sigmaX: 140, sigmaY: 140),
            //       child: Container(color: Colors.transparent),
            //     ),
            //   ),
            // ),
            Positioned(
              bottom: -160,
              right: -120,
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
            CustomScrollView(
              slivers: <Widget>[
                HomeSliverAppbar(),
                SliverGap(26),
                LiveDoctorsSection(),
                SliverGap(35),
                ActionsSection(),
                SliverGap(20),
                PopularDoctors(),
                SliverGap(30),
                FeatureDoctorsSection(),
                SliverGap(50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
