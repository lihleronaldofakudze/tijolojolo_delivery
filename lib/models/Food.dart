import 'package:cloud_firestore/cloud_firestore.dart';

class Food {
  final String id;
  final String chefId;
  final String name;
  final String shortDescription;
  final String description;
  final String imageUrl;
  final double price;
  final List<String> likes;
  final Timestamp timeToPrepare;
  final Timestamp lastUpdated;

  Food({
    required this.id,
    required this.chefId,
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.likes,
    required this.timeToPrepare,
    required this.lastUpdated,
  });
}
