import 'package:flutter/material.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_centertext.dart';
import 'package:pixel_parade/presentation/widgets/boxdecortion_withtext.dart';
import 'package:pixel_parade/presentation/widgets/textwidgets.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FAFCFF"),
      body: Column(children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          height: MediaQuery.of(context).size.height * .12,
          decoration: BoxDecoration(color: HexColor("#08D9E0")),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NeoText(
                text: "Home",
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, 'searchSticker',
                    arguments: 'test'),
                child: const Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 148,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.height * .08,
                            height: MediaQuery.of(context).size.height * .08,
                            decoration: BoxDecoration(
                                border: Border.all(color: HexColor("#006FFD")),
                                color: HexColor("#006FFD"),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              width: 20,
                              height: 20,
                              child: Image.asset(
                                'assets/images/camera_icon.png',
                              ),
                            )),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NeoText(
                                text: 'Customise your design',
                                size: 16,
                                color: HexColor("#006FFD"),
                                fontWeight: FontWeight.w500),
                            const SizedBox(
                              height: 10,
                            ),
                            NeoText(
                                text: 'Lorem ipsum dolor sit amet',
                                size: 14,
                                color: HexColor("#436692"),
                                fontWeight: FontWeight.w500)
                          ],
                        )
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: HexColor("#C9E0FB"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          'assets/images/banner.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const NeoText(
                              text: "Newly Added",
                              size: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          NeoText(
                              text: "View All",
                              size: 12,
                              color: HexColor("#006FFD"),
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeoText(
                          text: "Praesent molestie nec dolor vitae dignissim.",
                          size: 13,
                          color: HexColor("#6E6E6E"),
                          fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BoxDecorationWithText(
                              price: 'Free',
                              hexColor: HexColor("#C1B444"),
                              title: 'New Years Eve',
                              noOfStrickers: 9,
                              image: 'assets/images/sticker1.png',
                            ),
                            BoxDecorationWithText(
                                price: '\$0.99',
                                hexColor: HexColor("#87FFD4"),
                                title: 'Good Christmas',
                                noOfStrickers: 91,
                                image: 'assets/images/sticker2.png'),
                            BoxDecorationWithText(
                                price: 'Free',
                                hexColor: HexColor("#C1B444"),
                                title: 'Holiday Baloons',
                                noOfStrickers: 46,
                                image: 'assets/images/sticker3.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const NeoText(
                              text: "Popluar Categories",
                              size: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          NeoText(
                              text: "View All",
                              size: 12,
                              color: HexColor("#006FFD"),
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeoText(
                          text: "Praesent molestie nec dolor vitae dignissim.",
                          size: 13,
                          color: HexColor("#6E6E6E"),
                          fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 70,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BoxDecorationWithCenterText(
                                title: "Free",
                                borderColor: HexColor("#FF9494"),
                                color: HexColor("#FFEAEA")),
                            const SizedBox(
                              width: 10,
                            ),
                            BoxDecorationWithCenterText(
                                title: "Christmas",
                                borderColor: HexColor("#FFE894"),
                                color: HexColor("#FFFFEA")),
                            const SizedBox(
                              width: 10,
                            ),
                            BoxDecorationWithCenterText(
                                title: "Photo Filters",
                                borderColor: HexColor("#94A5FF"),
                                color: HexColor("#EAF3FF")),
                            const SizedBox(
                              width: 10,
                            ),
                            BoxDecorationWithCenterText(
                                title: "Sports",
                                borderColor: HexColor("#FFC194"),
                                color: HexColor("#FFF4EA")),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const NeoText(
                              text: "Recently Viewed",
                              size: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          NeoText(
                              text: "View All",
                              size: 12,
                              color: HexColor("#006FFD"),
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeoText(
                          text: "Praesent molestie nec dolor vitae dignissim.",
                          size: 13,
                          color: HexColor("#6E6E6E"),
                          fontWeight: FontWeight.w500),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BoxDecorationWithText(
                                price: 'Free',
                                hexColor: HexColor("#C1B444"),
                                title: 'New Years Eve',
                                noOfStrickers: 9,
                                image: 'assets/images/sticker4.png'),
                            BoxDecorationWithText(
                                price: '\$0.99',
                                hexColor: HexColor("#87FFD4"),
                                title: 'Good Christmas',
                                noOfStrickers: 91,
                                image: 'assets/images/sticker5.png'),
                            BoxDecorationWithText(
                                price: 'Free',
                                hexColor: HexColor("#C1B444"),
                                title: 'Holiday Baloons',
                                noOfStrickers: 46,
                                image: 'assets/images/sticker6.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
