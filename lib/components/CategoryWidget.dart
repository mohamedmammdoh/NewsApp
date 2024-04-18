import 'package:flutter/material.dart';
import 'package:newsapp/CategoryView.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: categoryModel.Categoryname);
            },
          ));
        },
        child: Container(
          width: 190,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(categoryModel.image),
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.Categoryname,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
