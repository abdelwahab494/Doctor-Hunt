import 'package:project2/imports.dart';

class TXT extends StatelessWidget {
  const TXT(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
    this.fontSize,
    this.fontWeight,
  });
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.rubik(
        color: color ?? Theme.of(context).colorScheme.primary,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight,
      ),
    );
  }
}
