import 'package:flutter/material.dart';
import 'package:newsapp/Services/NewsServices.dart';
import 'package:newsapp/components/ListViewArticle.dart';
import 'package:newsapp/models/ArticleModel.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices().GetNews(Category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListViewArticle(
            article: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const ErrorMassage();
        } else {
          return const Indecator();
        }
      },
    );
  }
}

class Indecator extends StatelessWidget {
  const Indecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class ErrorMassage extends StatelessWidget {
  const ErrorMassage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'OOPS There was an error ,trylater',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}
