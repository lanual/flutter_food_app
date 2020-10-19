import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/backward.svg'),
                    SvgPicture.asset('assets/icons/menu.svg'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.all(6),
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSecondaryColor,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/image_1_big.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Vegan Salad Bowl\n',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          TextSpan(
                            text: 'With red Tomato',
                            style: TextStyle(
                              color: kTextColor.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$20",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                    'llo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,'),
                Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.19),
              borderRadius: BorderRadius.circular(27),
            ),
            child: Row(
              children: [
                Text(
                  'Add to bag',
                  style: Theme.of(context).textTheme.button,
                ),
                SizedBox(width: 30),
                SvgPicture.asset('assets/icons/forward.svg'),
              ],
            ),
          ),
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.26),
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: SvgPicture.asset('assets/icons/bag.svg'),
                ),
                Positioned(
                  right: 10,
                  bottom: 5,
                  child: Container(
                    height: 28,
                    width: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: Text(
                      '0',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
