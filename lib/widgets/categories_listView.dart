import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      name: 'General',
      image: 'assets/general.avif',
    ),
    CategoryModel(
      name: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      name: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      name: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      name: 'Science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      name: 'Sports',
      image: 'assets/sports.avif',
    ),
    CategoryModel(
      name: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
