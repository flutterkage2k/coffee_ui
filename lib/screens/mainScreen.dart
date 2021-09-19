import 'package:flutter/material.dart';
import 'package:timertime/colorPallete.dart';
import 'package:timertime/screens/ourCoffeesScreen.dart';
import 'package:timertime/screens/ourDifferenceScreen.dart';
import 'package:timertime/screens/ourImpactScreen.dart';
import 'package:timertime/screens/ourStoryScreen.dart';
import 'package:timertime/screens/recipesScreen.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> with TickerProviderStateMixin {
  ColorPallete _colorPallete = new ColorPallete();
  late TabController _tabController; // with TickerProviderStateMixin 필요!

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 5, vsync: this);
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          buildNavigator(context),
          Container(
            margin: EdgeInsets.only(left: screenWidth / 3 - 50),
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ourCoffeesScreen(),
                ourStoryScreen(),
                ourDifferenceScreen(),
                ourImpactScreen(),
                recipesScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildNavigator(BuildContext context) {
    return RotatedBox(
        quarterTurns: 3,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.width / 3 - 50,
          color: _colorPallete.primaryColor,
          child: TabBar(
            labelColor: Colors.white,
            controller: _tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: _colorPallete.secondaryColor),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.only(top: 15, bottom: 15),
            tabs: [
              Tab(
                text: 'Our coffee',
              ),
              Tab(
                text: 'Our story',
              ),
              Tab(
                text: 'Our difference',
              ),
              Tab(
                text: 'Our impact',
              ),
              Tab(
                text: 'Recipes',
              ),
            ],
          ),
        ));
  }
}
