import 'package:project2/imports.dart';

class HomeSliverAppbar extends StatelessWidget {
  const HomeSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      expandedHeight: 170,
      collapsedHeight: 80,
      clipBehavior: Clip.none,
      scrolledUnderElevation: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: theme.primaryColor, //Color(0xff0EBE7F)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
        background: Container(
          color: theme.scaffoldBackgroundColor, //white color
          child: Stack(
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TXT(
                          "Hi 3bwhab!",
                          color: theme.colorScheme.secondary,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        Gap(3),
                        TXT(
                          "Find Your Doctor",
                          color: theme.colorScheme.secondary,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/home/3bwhab2.jpg"),
                      radius: 28,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
