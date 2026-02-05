import 'package:project2/imports.dart';

class LiveDoctorsSection extends StatelessWidget {
  LiveDoctorsSection({super.key});
  final List<String> liveDoctors = [
    "assets/home/doctor6.png",
    "assets/home/doctor7.png",
    "assets/home/doctor8.png",
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TXT(
              "Live Doctors",
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        SliverGap(20),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 168,
            child: ListView.separated(
              itemCount: liveDoctors.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              separatorBuilder: (context, index) => Gap(15),
              itemBuilder: (context, index) {
                final String doctor = liveDoctors[index];
                return LiveDoctorCard(doctor: doctor);
              },
            ),
          ),
        ),
      ],
    );
  }
}
