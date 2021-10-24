import 'package:book_app/widgets/reading_card_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_page_bg.png',
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.contain),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 65),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(text: 'What are you \nreading'),
                    TextSpan(
                      text: ' today?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: 'assets/images/book-1.png',
                    title: 'Crushing & Influence',
                    auth: 'Gary Venchuk',
                    ratings: 4.9,
                  ),
                  ReadingListCard(
                    image: 'assets/images/book-2.png',
                    title: 'Top Ten Buisness Hacks',
                    auth: 'Herman Joel',
                    ratings: 4.8,
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: 'Best of the'),
                        TextSpan(
                          text: ' day',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 205,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 185,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffeaeaea).withOpacity(.45),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              children:<Widget>[
                                Text('New York Time For 11th March 2021')
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset('assets/images/book-3.png',),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
