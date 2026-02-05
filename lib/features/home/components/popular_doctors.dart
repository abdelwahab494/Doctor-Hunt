import 'package:project2/imports.dart';

class PopularDoctors extends StatelessWidget {
  PopularDoctors({super.key});
  final List<DoctorModel> popularDoctors = [
    DoctorModel(
      image: "assets/home/doctor1.jpg",
      title: "Dr. Fillerup Grab",
      subTitle: "Medicine Specialist",
      rating: 4,
    ),
    DoctorModel(
      image: "assets/home/doctor2.jpg",
      title: "Dr. Blessing",
      subTitle: "Dentist Specialist",
      rating: 3,
    ),
    DoctorModel(
      image: "assets/home/doctor3.jpg",
      title: "Dr. Magnise Carleson",
      subTitle: "Medicine Specialist",
      rating: 5,
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
                  "Popular Doctors",
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
            height: 300,
            child: ListView.separated(
              itemCount: popularDoctors.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              separatorBuilder: (context, index) => Gap(15),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                final DoctorModel doctor = popularDoctors[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) => DoctorDetailsScreen(doctor: doctor),
                    ),
                  ),
                  child: Container(
                    width: 210,
                    height: 264,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(doctor.image!, fit: BoxFit.cover),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TXT(
                                doctor.title!,
                                fontSize: 18,
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              TXT(
                                doctor.subTitle!,
                                fontSize: 12,
                                color: theme.colorScheme.onPrimary,
                                fontWeight: FontWeight.w300,
                              ),
                              Gap(6),
                              RatingRow(rate: doctor.rating!.toInt()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
