import 'package:project2/imports.dart';

class FeatureDoctorCard extends StatefulWidget {
  const FeatureDoctorCard({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  State<FeatureDoctorCard> createState() => _FeatureDoctorCardState();
}

class _FeatureDoctorCardState extends State<FeatureDoctorCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      width: 140,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(2, 2)),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => setState(() => isFav = !isFav),
                child: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: isFav ? Colors.red : Color(0xff777EA5),
                  size: 18,
                ),
              ),
              Row(
                spacing: 2,
                children: [
                  Icon(Icons.star, color: Color(0xffF6D060), size: 18),
                  TXT(
                    widget.doctor.rating.toString(),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Gap(10),
          CircleAvatar(
            backgroundImage: AssetImage(widget.doctor.image!),
            radius: 45,
          ),
          Gap(10),
          TXT(
            widget.doctor.title!,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: theme.colorScheme.primary,
          ),
          Row(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TXT(
                "\$",
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: theme.primaryColor,
              ),
              TXT(
                "${widget.doctor.price}/hour",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: theme.colorScheme.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
