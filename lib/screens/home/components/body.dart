import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/Title_With_Morebtn.dart';
import 'package:plantapp/screens/home/components/header_with_search.dart';
import 'package:plantapp/screens/home/components/homescreen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          const TitleWithMoreButton(
            title: "Recommended",
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SinglePlant(),
                SinglePlant(),
                SinglePlant(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SinglePlant extends StatelessWidget {
  const SinglePlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecommendPlant(
      image: "assets/images/plantphoto.jpg",
      title: "Samantha",
      country: "Russia",
      price: 440,
      press: () {},
    );
  }
}

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String title, image, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.23),
                        blurRadius: 50)
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country\n".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.23)))
                    ],
                  )),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
