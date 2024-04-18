import 'package:flutter/material.dart';
import 'package:newsapp/components/CategoryWidget.dart';
import 'package:newsapp/models/category_model.dart';

class ListViewCard extends StatelessWidget {
  ListViewCard({super.key});
  final List<CategoryModel> categorymodel = [
    CategoryModel(
      image: 'lib/assests/Sport-news-intro-loop.webp',
      Categoryname: 'sports',
    ),
    CategoryModel(
      image: 'lib/assests/entertement.jpeg',
      Categoryname: 'entertainment',
    ),
    CategoryModel(
      image: 'lib/assests/general.jpeg',
      Categoryname: 'general',
    ),
    CategoryModel(
      image: 'lib/assests/health.jpeg',
      Categoryname: 'health',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size.width * 0.27;
    return SizedBox(
      height: mediaquery,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryWidget(
          categoryModel: categorymodel[index],
        ),
        itemCount: categorymodel.length,
      ),
    );
  }
}
