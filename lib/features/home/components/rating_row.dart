import 'package:project2/imports.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.rate});
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          size: 20,
          color: rate >= index + 1 ? Color(0xffF6D060) : Color(0xffE2E5EA),
        );
      }),
    );
  }
}
