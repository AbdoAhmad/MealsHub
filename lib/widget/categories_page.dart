import 'package:flutter/material.dart';
import 'package:mealshub/model/category.dart';

class Categories extends StatelessWidget {
  final List<Category> dummyCategories;
  Categories(this.dummyCategories);
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: dummyCategories.map((element) {
        return Container(
          child: Card(
            child: Text(element.label),
            elevation: 10,
            color: element.color,
            //shape: BoxDecoration(),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
        );
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,

        //childAspectRatio: .,
        //crossAxisSpacing: 10,
        //mainAxisSpacing: 10
      ),
    );
  }
}
