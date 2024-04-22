import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_centertext.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_withnotification.dart';
import 'package:pixel_parade/presentation/widgets/textwidgets.dart';
import 'package:pixel_parade/subcategories.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({Key? key}) : super(key: key);

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State<MyCategories> {
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
                  text: "My Collections",
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
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: NeoText(
                      text: "Popular Categories (6)",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: NeoText(
                      text: "Praesent molestie nec dolor vitae dignissim.",
                      size: 13,
                      color: HexColor("#6E6E6E"),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .34,
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 20,
                              childAspectRatio: 1 / 1,
                              mainAxisSpacing: 15),
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Free'),
                          child: BoxDecorationWithCenterText(
                            title: 'Free',
                            borderColor: HexColor("#FF9494"),
                            color: HexColor("#FFEAEA"),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Christmas'),
                          child: BoxDecorationWithCenterText(
                            title: 'Christmas',
                            borderColor: HexColor("#FFE894"),
                            color: HexColor("#FFFFEA"),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Photo Filters'),
                          child: BoxDecorationWithCenterText(
                            title: 'Photo Filters',
                            borderColor: HexColor("#94A5FF"),
                            color: HexColor("#EAF3FF"),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Sports'),
                          child: BoxDecorationWithCenterText(
                            title: 'Sports',
                            borderColor: HexColor("#FFC194"),
                            color: HexColor("#FFF4EA"),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Basketball'),
                          child: BoxDecorationWithCenterText(
                            title: 'Basketball',
                            borderColor: HexColor("#94F9FF"),
                            color: HexColor("#EAFBFF"),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, 'subCategories',
                              arguments: 'Humorous Saying'),
                          child: BoxDecorationWithCenterText(
                            title: 'Humorous Saying',
                            borderColor: HexColor("#E394FF"),
                            color: HexColor("#FDEAFF"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: NeoText(
                      text: "Other Categories (40)",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: NeoText(
                      text: "Praesent molestie nec dolor vitae dignissim.",
                      size: 13,
                      color: HexColor("#6E6E6E"),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: SizedBox(
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 20,
                              childAspectRatio: 1 / 1,
                              mainAxisSpacing: 20),
                      children: const [
                        BoxDecorationWithNotification(
                          title: "Cheerleading",
                          notification: false,
                        ),
                        BoxDecorationWithNotification(
                          title: "Colorinng Books",
                          notification: false,
                        ),
                        BoxDecorationWithNotification(
                          title: "Digital Stickers",
                          notification: false,
                        ),
                        BoxDecorationWithNotification(
                            title: "Exclusive ArtWork", notification: false),
                        BoxDecorationWithNotification(
                            title: "Fonts", notification: false),
                        BoxDecorationWithNotification(
                            title: "Football", notification: false),
                        BoxDecorationWithNotification(
                            title: "Soccer", notification: false),
                        BoxDecorationWithNotification(
                            title: "Graduation", notification: false),
                        BoxDecorationWithNotification(
                            title: "Holidays", notification: false)
                      ],
                    ),
                  ),
                )
              ]))),
        ]));
  }
}
