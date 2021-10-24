import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/two_sided_rounded_button.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double ratings;
  // final Function pressDetails;
  // final Function pressRead;
  const ReadingListCard({
    required this.image,
    required this.title,
    required this.auth,
    required this.ratings,
    // required this.pressDetails,
    // required this.pressRead,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        boxShadow: [
          BoxShadow(offset: Offset(1, 5), blurRadius: 33, color: Colors.grey),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            top: 20,
            right: 0,
            child: Container(
              height: 221,
              // color: Colors.white,
            ),
          ),
          Positioned(
            top: 0,
            // bottom: 0,
            child: Image.asset(
              image,
              width: 150,
            ),
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                BookRating(
                  score: ratings,
                )
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: auth,
                            style: TextStyle(color: kLightBlackColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: 'Read',
                          press: () {},
                          radious: 29,
                        ),
                      )
                    ],
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
