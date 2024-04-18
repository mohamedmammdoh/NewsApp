import 'package:flutter/material.dart';
import 'package:newsapp/components/NewsListViewBuilder.dart';
import 'package:newsapp/components/listviewcard.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListViewCard(),
          const Expanded(
            child: NewsListViewBuilder(
              category: 'general',
            ),
          ),
        ],
      ),
    );
  }
}
