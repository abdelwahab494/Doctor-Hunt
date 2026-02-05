import 'package:project2/imports.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Search",
        hintStyle: GoogleFonts.rubik(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Color(0xff677294),
        ),
        prefixIcon: Icon(Icons.search),
        prefixIconColor: Color(0xff677294),
        suffixIcon: Icon(Icons.clear),
        suffixIconColor: Color(0xff677294),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
