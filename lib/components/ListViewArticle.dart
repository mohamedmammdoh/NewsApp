import 'package:flutter/material.dart';
import 'package:newsapp/components/ArticleWidget.dart';
import 'package:newsapp/models/ArticleModel.dart';

class ListViewArticle extends StatelessWidget {
  const ListViewArticle({super.key, required this.article});

  final List<ArticleModel> article;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: article.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ArticleWidget(
          articleModel: article[index],
        ),
      ),
    );
  }
}
