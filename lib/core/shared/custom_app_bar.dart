import 'package:project2/imports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title,  this.actions});
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: 90,
      leading: IconButton.filled(
        onPressed: () => Navigator.of(context).pop(),
        style: IconButton.styleFrom(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        icon: Icon(Icons.arrow_back_ios_new, size: 20),
      ),
      title: TXT("Doctor Details", fontWeight: FontWeight.w500, fontSize: 18),
      titleSpacing: 0,
      actions: actions,
      actionsPadding: EdgeInsets.only(right: 10),
      toolbarHeight: 80,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(80);
}
