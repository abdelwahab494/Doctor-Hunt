import 'package:project2/imports.dart';

class StatesRow extends StatelessWidget {
  const StatesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(41, 203, 203, 203),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TXT(
                    100.toString(),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  TXT(
                    "Runing",
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xff677294),
                  ),
                ],
              ),
            ),
            Container(
              width: 90,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(41, 203, 203, 203),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TXT(
                    500.toString(),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  TXT(
                    "Ongoing",
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xff677294),
                  ),
                ],
              ),
            ),
            Container(
              width: 90,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(41, 203, 203, 203),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TXT(
                    700.toString(),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  TXT(
                    "Patient",
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xff677294),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
