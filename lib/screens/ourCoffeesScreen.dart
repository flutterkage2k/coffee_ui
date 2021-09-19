import 'package:flutter/material.dart';
import 'package:timertime/colorPallete.dart';

class ourCoffeesScreen extends StatelessWidget {
  ColorPallete _colorPallete = new ColorPallete();
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Organic,\nSpeciality\nGrade coffee',
                  style: TextStyle(
                      color: _colorPallete.textGreen,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Bold or lightly sweetened, black or creamy, find an organic brew that\'s perfect for you',
                  style: TextStyle(
                    color: _colorPallete.textGreen,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Our products',
                  style: TextStyle(
                    color: _colorPallete.secondaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                SingleChildScrollView(
                  controller: _scrollController,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildProductWidget(context, 'assets/pocket1.png',
                          0xff038851, 'Coffee concentrate', 'Black', '\$8.99'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildProductWidget(BuildContext context, String imgPath, int cardColor,
      String title1, String title2, String price) {
    return Wrap(
      children: [
        InkWell(
          onTap: null,
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Color(cardColor),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
            ),
          ),
        ),
      ],
    );
  }
}
