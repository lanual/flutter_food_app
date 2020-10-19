import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_food_app/constants.dart';
import 'package:flutter_food_app/details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/food_card.dart';
import 'widgets/category_title.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline6: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  //height: 11,
                ),
              ),
              Text(
                'Simple Way to find \nTasty Food',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryTitle(title: 'ALL', active: true),
                    CategoryTitle(title: 'Italian', active: false),
                    CategoryTitle(title: 'Asian', active: false),
                    CategoryTitle(title: 'Chinese', active: false),
                    CategoryTitle(title: 'Burgers', active: false),
                    CategoryTitle(title: 'Burgers', active: false),
                    CategoryTitle(title: 'Burgers', active: false),
                    CategoryTitle(title: 'Burgers', active: false),
                  ],
                ),
              ),
              Container(
                height: isPortrait ? size.height * 0.05 : size.height * 0.1,
                width: size.width,
                margin: EdgeInsets.symmetric(
                  vertical: size.height * 0.02,
                  horizontal: size.width * 0.02,
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor),
                ),
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  alignment: Alignment.centerLeft,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      calories: '420 Kcal',
                      description:
                          'beatae vitae dicta sunt explicabo. Nemo enim ipsam',
                      image: 'assets/images/image_1.png',
                      ingredient: 'With Red Tomato',
                      price: 40,
                      title: 'Vegan Salad Bowl',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailScreen();
                            },
                          ),
                        );
                      },
                    ),
                    FoodCard(
                      calories: '520 Kcal',
                      description:
                          'beatae vitae dicta sunt explicabo. Nemo enim ipsam',
                      image: 'assets/images/image_2.png',
                      ingredient: 'With Red Tomato',
                      price: 50,
                      title: 'Vegan Salad Bowl',
                      press: () {},
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
