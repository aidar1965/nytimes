import 'package:isar/isar.dart';

part 'article.g.dart';

@collection
class Article {
  Article({
    required this.title,
    required this.articleAbstract,
    required this.url,
    required this.date,
    this.image,
    required this.authors,
  });

  Id id = Isar.autoIncrement;

  final String title;
  final String articleAbstract;
  final String url;
  final DateTime date;
  final String? image;
  final List<String> authors;
}
