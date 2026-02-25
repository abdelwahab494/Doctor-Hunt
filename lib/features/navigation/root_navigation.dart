import 'package:project2/imports.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({super.key});

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  int currentIndex = 0;
  bool isSelected(int index) => currentIndex == index;
  final List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    NewsScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) => setState(() => currentIndex = value),
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected(0) ? Theme.of(context).primaryColor : null,
                ),
                child: SvgPicture.asset(
                  "assets/bottom icons/home.svg",
                  color: isSelected(0) ? Colors.white : Color(0xff858EA9),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected(1) ? Theme.of(context).primaryColor : null,
                ),
                child: SvgPicture.asset(
                  "assets/bottom icons/fav.svg",
                  color: isSelected(1) ? Colors.white : Color(0xff858EA9),
                ),
              ),
              label: "fav",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected(2) ? Theme.of(context).primaryColor : null,
                ),
                child: SvgPicture.asset(
                  "assets/bottom icons/book.svg",
                  color: isSelected(2) ? Colors.white : Color(0xff858EA9),
                ),
              ),
              label: "book",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected(3) ? Theme.of(context).primaryColor : null,
                ),
                child: SvgPicture.asset(
                  "assets/bottom icons/chat.svg",
                  color: isSelected(3) ? Colors.white : Color(0xff858EA9),
                ),
              ),
              label: "chat",
            ),
          ],
        ),
      ),
    );
  }
}
