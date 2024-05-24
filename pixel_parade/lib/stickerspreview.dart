import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pixel_parade/models/stickers_model.dart';
import 'package:pixel_parade/network/api_constants.dart';
import 'package:pixel_parade/presentation/widgets/boxdecoration_with_centerimage_small.dart';
import 'package:pixel_parade/presentation/widgets/textwidgets.dart';

class StickerPreview extends StatefulWidget {
  final TotalStickers? selectedSticker;
  const StickerPreview({Key? key, required this.selectedSticker})
      : super(key: key);

  @override
  State<StickerPreview> createState() => _StickerPreviewState();
}

class _StickerPreviewState extends State<StickerPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#FAFCFF"),
        body: (widget.selectedSticker != null)
            ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                            text: widget.selectedSticker?.name ?? "",
                            size: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, 'searchSticker',
                            arguments: 'test'),
                        child: const Icon(
                          Icons.search_sharp,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: NeoText(
                      text:
                          "Stickers (${widget.selectedSticker?.stickers.length})",
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
                      text: widget.selectedSticker?.description ?? "",
                      size: 13,
                      color: HexColor("#6E6E6E"),
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          primary: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 20,
                                  childAspectRatio: 1 / 1.2,
                                  mainAxisSpacing: 10),
                          itemCount:
                              widget.selectedSticker?.stickers.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            return BoxDecorationWithCenterImageSmall(
                              image:
                                  "${ApiConstants.baseUrlForImages}/${widget.selectedSticker?.stickers[index].filename ?? ""}",
                            );
                          },
                        ))),
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
                          text: "\$${widget.selectedSticker?.price} | Buy Now",
                          size: 14,
                          color: HexColor("#ffffff"),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ])
            : Container());
  }
}
