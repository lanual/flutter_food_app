import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  FoodCard({
    @required this.ingredient,
    @required this.calories,
    @required this.image,
    @required this.price,
    @required this.title,
    @required this.description,
    @required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            //BackGround
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(34),
                ),
              ),
            ),
            //Rounded BackGround
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            //Food Image
            Positioned(
              top: 0,
              left: -40,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            //Price
            Positioned(
              right: 0,
              top: 100,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            //Description
            Positioned(
              top: 200,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      ingredient,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.65),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(calories),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
