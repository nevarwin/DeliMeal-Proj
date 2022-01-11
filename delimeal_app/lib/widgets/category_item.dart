import 'package:flutter/material.dart';

import '../screen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({Key? key}) : super(key: key);

  final String id;
  final String title;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const CategoryItem(
    this.id,
    this.title,
    this.color,
  );

  void selectCategory(ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
