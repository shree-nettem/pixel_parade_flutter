import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pixel_parade/home.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_with_cennterimage.dart';
import 'package:pixel_parade/presentation/widgets/boxdecortion_withtext.dart';
import 'package:pixel_parade/presentation/widgets/textwidgets.dart';

class MyCollection extends StatefulWidget {
  const MyCollection({super.key});

  @override
  State<StatefulWidget> createState() => _MyCollection();
}

class _MyCollection extends State<MyCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#FAFCFF"),
        body: Column(
          children: [
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
            SizedBox(
              height: MediaQuery.of(context).size.height - 148,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: NeoText(
                            text: "All Collections (6)",
                            size: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: NeoText(
                            text:
                                "Praesent molestie nec dolor vitae dignissim.",
                            size: 13,
                            color: HexColor("#6E6E6E"),
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height + 80,
                          child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            primary: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    childAspectRatio: 1 / 1.2,
                                    mainAxisSpacing: 10),
                            children: [
                              BoxDecorationWithCenterImage(
                                price: 'Free',
                                hexColor: HexColor("#C1B444"),
                                title: 'New Years Eve',
                                noOfStrickers: 9,
                                image: 'assets/images/sticker1.png',
                              ),
                              BoxDecorationWithCenterImage(
                                  price: '\$0.99',
                                  hexColor: HexColor("#87FFD4"),
                                  title: 'Good Christmas',
                                  noOfStrickers: 91,
                                  image: 'assets/images/sticker2.png'),
                              BoxDecorationWithCenterImage(
                                  price: 'Free',
                                  hexColor: HexColor("#C1B444"),
                                  title: 'Holiday Baloons',
                                  noOfStrickers: 46,
                                  image: 'assets/images/sticker3.png'),
                              BoxDecorationWithCenterImage(
                                  price: 'Free',
                                  hexColor: HexColor("#C1B444"),
                                  title: 'New Years Eve',
                                  noOfStrickers: 9,
                                  image: 'assets/images/sticker4.png'),
                              BoxDecorationWithCenterImage(
                                  price: '\$0.99',
                                  hexColor: HexColor("#87FFD4"),
                                  title: 'Good Christmas',
                                  noOfStrickers: 91,
                                  image: 'assets/images/sticker5.png'),
                              BoxDecorationWithCenterImage(
                                  price: 'Free',
                                  hexColor: HexColor("#C1B444"),
                                  title: 'Holiday Baloons',
                                  noOfStrickers: 46,
                                  image: 'assets/images/sticker6.png'),
                              BoxDecorationWithCenterImage(
                                  price: 'Free',
                                  hexColor: HexColor("#C1B444"),
                                  title: 'New Years Eve',
                                  noOfStrickers: 9,
                                  image: 'assets/images/sticker1.png'),
                              BoxDecorationWithCenterImage(
                                  price: '\$0.99',
                                  hexColor: HexColor("#87FFD4"),
                                  title: 'Good Christmas',
                                  noOfStrickers: 91,
                                  image: 'assets/images/sticker2.png'),
                              BoxDecorationWithCenterImage(
                                  price: 'Free',
                                  hexColor: HexColor("#C1B444"),
                                  title: 'Holiday Baloons',
                                  noOfStrickers: 46,
                                  image: 'assets/images/sticker3.png'),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ));
  }
}
