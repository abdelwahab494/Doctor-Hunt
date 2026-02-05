import 'package:project2/imports.dart';

class FeatureDoctorsSection extends StatelessWidget {
  FeatureDoctorsSection({super.key});

  final List<DoctorModel> doctors = [
    DoctorModel(
      image: "assets/home/doctor3.jpg",
      title: "Dr. Crick",
      rating: 3.7,
      price: 25.00,
    ),
    DoctorModel(
      image: "assets/home/doctor4.jpg",
      title: "Dr. Strain",
      rating: 3.0,
      price: 22.00,
    ),
    DoctorModel(
      image: "assets/home/doctor5.jpg",
      title: "Dr. Lachinet",
      rating: 2.7,
      price: 29.00,
    ),
    DoctorModel(
      image: "assets/home/doctor6.png",
      title: "Dr. Blessing",
      rating: 4.1,
      price: 30.00,
    ),
    DoctorModel(
      image: "assets/home/doctor7.png",
      title: "Dr. Crick",
      rating: 3.9,
      price: 20.00,
    ),
    DoctorModel(
      image: "assets/home/doctor8.png",
      title: "Dr. Strain",
      rating: 3.3,
      price: 27.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                TXT(
                  "Feature Doctors",
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color(0xff677294),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff677294),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff677294),
                  size: 10,
                ),
              ],
            ),
          ),
        ),
        SliverGap(20),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 190,
            child: ListView.separated(
              itemCount: doctors.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              separatorBuilder: (context, index) => Gap(15),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                final DoctorModel doctor = doctors[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) => DoctorDetailsScreen(doctor: doctor),
                    ),
                  ),
                  child: FeatureDoctorCard(doctor: doctor),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
