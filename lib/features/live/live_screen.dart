import 'package:flutter/cupertino.dart';
import 'package:project2/imports.dart';

class LiveScreen extends StatelessWidget {
  LiveScreen({super.key, required this.doctorImage});
  final String doctorImage;

  final List<FansModel> fans = [
    FansModel(
      name: "Everhart Tween",
      image: "assets/fans/1.png",
      comment: "Thanks for shareing doctor",
    ),
    FansModel(
      name: "Bonebrake Mash",
      image: "assets/fans/2.png",
      comment: "They treat immune system disorders",
    ),
    FansModel(
      name: "Handler Wack",
      image: "assets/fans/3.png",
      comment: "This is the largest directory",
    ),
    FansModel(
      name: "Comfort Love",
      image: "assets/fans/4.png",
      comment: "Depending on their education",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton.filled(
            onPressed: () => Navigator.of(context).pop(),
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          leadingWidth: 80,
          actions: [CircleAvatar(backgroundImage: AssetImage(doctorImage))],
          actionsPadding: EdgeInsets.only(right: 20),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(doctorImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: fans.length,
                      itemBuilder: (BuildContext context, int index) {
                        final FansModel fan = fans[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(fan.image),
                          ),
                          title: TXT(
                            fan.name,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          subtitle: TXT(
                            fan.comment,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Icon(
                            CupertinoIcons.chat_bubble_text,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Gap(15),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(500),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              hintText: "Add a Comment ...",
                              hintStyle: GoogleFonts.rubik(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Color(0xFF7295CC),
                              ),
                            ),
                          ),
                        ),
                        Gap(15),
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Color(0xFF7295CC),
                        ),
                        Gap(8),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
