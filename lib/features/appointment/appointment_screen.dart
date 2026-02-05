import 'dart:ui';

import 'package:project2/imports.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(title: "Appointment"),
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
                color: theme.primaryColor.withOpacity(0.40),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 140, sigmaY: 140),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverGap(110),
                DoctorDetailsCard(doctor: doctor, isBooking: true),
                SliverGap(30),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TXT(
                        "Appointment For",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Gap(20),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          hintText: "Patient Name",
                          hintStyle: GoogleFonts.rubik(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: AppColors.text2,
                          ),
                        ),
                      ),
                      Gap(18),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          hintText: "Contact Number",
                          hintStyle: GoogleFonts.rubik(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: AppColors.text2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverGap(30),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TXT(
                        "Who is this patient?",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Gap(20),
                      SizedBox(
                        height: 125,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 100,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: theme.primaryColor.withOpacity(0.3),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: theme.primaryColor,
                                      size: 50,
                                    ),
                                    TXT(
                                      "Add",
                                      fontWeight: FontWeight.w400,
                                      color: theme.primaryColor,
                                      fontSize: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(10),
                            Container(
                              width: 100,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: AssetImage("assets/home/son.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(10),
                            Container(
                              width: 100,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: AssetImage("assets/home/child.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(10),
                            Container(
                              width: 100,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                  image: AssetImage("assets/home/douter.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverGap(40),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(16, 8, 16, 30),
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(6),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: TXT(
                        "Next",
                        color: theme.scaffoldBackgroundColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
