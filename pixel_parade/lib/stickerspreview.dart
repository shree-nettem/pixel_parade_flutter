import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_with_centerimage_small.dart';
import 'package:pixel_parade/presentation/widgets/textwidgets.dart';

class StickerPreview extends StatefulWidget {
  const StickerPreview({Key? key}) : super(key: key);

  @override
  State<StickerPreview> createState() => _StickerPreviewState();
}

class _StickerPreviewState extends State<StickerPreview> {
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
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
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                    NeoText(
                      text: title,
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
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
                      text: "Sticker (18)",
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
                        height: MediaQuery.of(context).size.height -
                            MediaQuery.of(context).size.height * .12,
                        child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            primary: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 20,
                                    childAspectRatio: 1 / 1.2,
                                    mainAxisSpacing: 10),
                            children: const [
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker1.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker2.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker3.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker4.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker5.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker6.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker1.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker2.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker3.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker4.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker5.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker6.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker2.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker3.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker4.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker5.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker6.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker1.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker2.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker3.png',
                              ),
                              BoxDecorationWithCenterImageSmall(
                                image: 'assets/images/sticker4.png',
                              )
                            ])))
              ]))),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor("#006FFD"),
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: NeoText(
                    text: "\$0.99 | Buy Now",
                    size: 14,
                    color: HexColor("#ffffff"),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]));
  }
}
