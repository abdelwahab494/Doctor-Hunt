import 'dart:ui';
import 'package:project2/imports.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Doctor Details",
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Color(0xff677294)),
          ),
        ],
      ),
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
              slivers: [
                SliverGap(110),
                DoctorDetailsCard(
                  doctor: doctor,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (c) => AppointmentScreen(doctor: doctor),
                      ),
                    );
                  },
                ),
                SliverGap(24),
                StatesRow(),
                SliverGap(27),
                SliverToBoxAdapter(
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TXT(
                        "Services",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Gap(15),
                      Row(
                        spacing: 8,
                        children: [
                          TXT(
                            "1.",
                            color: theme.primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          TXT(
                            "Patient care should be the number one priority.",
                            color: Color(0xA37295E5),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Divider(color: Color(0xA37295E5)),
                      Row(
                        spacing: 8,
                        children: [
                          TXT(
                            "2.",
                            color: theme.primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          TXT(
                            "If you run your practiceyou know how frustrating.",
                            color: Color(0xA37295E5),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Divider(color: Color(0xA37295E5)),
                      Row(
                        spacing: 8,
                        children: [
                          TXT(
                            "3.",
                            color: theme.primaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          TXT(
                            "That’s why some of appointment reminder system.",
                            color: Color(0xA37295E5),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SliverGap(30),
                SliverToBoxAdapter(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                    decoration: BoxDecoration(
                      color: theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Image.asset("assets/home/map.png"),
                  ),
                ),
                SliverGap(50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
