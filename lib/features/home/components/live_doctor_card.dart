import 'package:project2/imports.dart';

class LiveDoctorCard extends StatelessWidget {
  const LiveDoctorCard({super.key, required this.doctor});
  final String doctor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => LiveScreen(doctorImage: doctor)),
      ),
      child: Container(
        width: 116,
        height: 168,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(doctor),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.multiply,
            ),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xffFA002F),
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: theme.colorScheme.secondary,
                    ),
                    TXT(
                      "Live".toUpperCase(),
                      color: theme.colorScheme.secondary,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ).animate().scale(begin: Offset(0.8, 0.8), end: Offset(0.8, 0.8)),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 50,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.secondary,
                      width: 5,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 20,
                    color: theme.colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
