import 'category.dart';
import 'tag.dart';

class Pet{
  final int id;
  final Category? category;
  final String name;
  final List<String> photoUrls;
  final List<Tag> tags;
  final String status;
  Pet({
    required this.id,
    this.category,
    required this.name,
    required this.photoUrls,
    required this.tags,
    required this.status,
  });
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'category': category?.toJson(),
      'name': name,
      'photoUrls': photoUrls,
      'tags': tags.map((t) => t.toJson()).toList(),
      'status': status,
    };
  }
  factory Pet.fromJson(Map<String, dynamic> json){
    return Pet(
      id: json['id'] as int,
      category: json['category'] != null
          ? Category.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      name: json['name'] as String,
      photoUrls: List<String>.from(json['photoUrls'] as List),
      tags: (json['tags'] as List)
          .map((t) => Tag.fromJson(t as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );
  }
}