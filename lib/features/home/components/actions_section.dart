import 'package:project2/imports.dart';

class ActionsSection extends StatelessWidget {
  ActionsSection({super.key});
  final List actions = [
    [Color(0xff3654f4), "assets/home/icon1.svg"],
    [Color(0xff21d7a9), "assets/home/icon2.svg"],
    [Color(0xfffe7f43), "assets/home/icon3.svg"],
    [Color(0xffff4f50), "assets/home/icon4.svg"],
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: actions.length,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          separatorBuilder: (context, index) => Gap(10),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    actions[index][0],
                    actions[index][0],
                    actions[index][0].withOpacity(0.5),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SvgPicture.asset(actions[index][1]),
            );
          },
        ),
      ),
    );
  }
}
