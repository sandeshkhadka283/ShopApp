import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            onPressed: () {},
            child: Text('More', style: TextStyle(color: Colors.white)),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: kPrimaryColor, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(100)),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
            padding: const EdgeInsets.only(right: kDefaultPadding / 4),
          ),
        )
      ]),
    );
  }
}
