import 'package:project2/imports.dart';

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({
    super.key,
    required this.doctor,
    this.isBooking = false,
    this.onTap,
  });
  final DoctorModel doctor;
  final bool isBooking;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    doctor.image!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TXT(
                      doctor.title!,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    if (doctor.subTitle != null)
                      TXT(
                        doctor.subTitle!,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: theme.colorScheme.onPrimary,
                      ),
                    Gap(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingRow(rate: doctor.rating!.toInt()),
                        Gap(25),
                        if (doctor.price != null)
                          Row(
                            spacing: 2,
                            children: [
                              TXT("\$", color: theme.primaryColor),
                              TXT("${doctor.price}/hr"),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            if (!isBooking) Gap(15),
            if (!isBooking)
              FilledButton(
                onPressed: onTap,
                style: FilledButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(4),
                  ),
                ),
                child: TXT(
                  "Book Now",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
