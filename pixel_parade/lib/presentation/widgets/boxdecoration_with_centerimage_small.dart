import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BoxDecorationWithCenterImageSmall extends StatelessWidget {
  final String image;
  const BoxDecorationWithCenterImageSmall({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        // physics: const NeverScrollableScrollPhysics(),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor("#81F0F3"), width: 1),
                    borderRadius: BorderRadius.circular(30),
                    shape: BoxShape.rectangle,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(image, fit: BoxFit.contain),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
