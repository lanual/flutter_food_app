import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  CategoryTitle({@required this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
        horizontal: size.width * 0.03,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
