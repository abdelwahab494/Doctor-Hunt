import 'dart:ui';
import 'package:project2/imports.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});
  final List<DoctorModel> doctors = [
    DoctorModel(
      image: "assets/home/doctor3.jpg",
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
      image: "assets/home/doctor1.jpg",
      title: "Dr. Shouey",
      subTitle: "Medicine Specialist",
      rating: 5,
    ),
    DoctorModel(
      image: "assets/home/doctor5.jpg",
      title: "Dr. Christenfeld N",
      subTitle: "Medicine Specialist",
      rating: 5,
    ),
  ];

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
                color: theme.primaryColor.withOpacity(0.40),
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
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 40),
            child: CustomScrollView(
              clipBehavior: Clip.none,
              slivers: <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  expandedHeight: 100,
                  collapsedHeight: 60,
                  scrolledUnderElevation: 0,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 1,
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: SearchFeild(),
                    ),
                    background: TXT(
                      "Favourite Doctors",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.95,
                  ),
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final DoctorModel doctor = doctors[index];
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (c) => DoctorDetailsScreen(doctor: doctor),
                        ),
                      ),
                      child: FavGrid(doctor: doctor),
                    );
                  },
                ),
                SliverGap(30),
                FeatureDoctorsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
