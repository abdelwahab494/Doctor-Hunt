import 'package:project2/imports.dart';

class FavGrid extends StatefulWidget {
  const FavGrid({super.key, required this.doctor});
  final DoctorModel doctor;

  @override
  State<FavGrid> createState() => _FavGridState();
}

class _FavGridState extends State<FavGrid> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () => setState(() => isFav = !isFav),
              child: Icon(
                isFav ? Icons.favorite : Icons.favorite_border,
                color: isFav ? Colors.red : Color(0xff777EA5),
                size: 18,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.doctor.image!),
                radius: 40,
              ),
              Gap(10),
              TXT(
                widget.doctor.title!,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              Gap(4),
              TXT(
                widget.doctor.subTitle!,
                color: theme.primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
