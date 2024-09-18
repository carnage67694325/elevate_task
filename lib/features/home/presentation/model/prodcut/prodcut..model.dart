import 'dart:convert';

import 'rating..model.dart';

class Prodcut {
	int? id;
	String? title;
	double? price;
	String? description;
	String? category;
	String? image;
	Rating? rating;

	Prodcut({
		this.id, 
		this.title, 
		this.price, 
		this.description, 
		this.category, 
		this.image, 
		this.rating, 
	});

	factory Prodcut.fromMap(Map<String, dynamic> data) => Prodcut(
				id: data['id'] as int?,
				title: data['title'] as String?,
				price: (data['price'] as num?)?.toDouble(),
				description: data['description'] as String?,
				category: data['category'] as String?,
				image: data['image'] as String?,
				rating: data['rating'] == null
						? null
						: Rating.fromMap(data['rating'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'title': title,
				'price': price,
				'description': description,
				'category': category,
				'image': image,
				'rating': rating?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Prodcut].
	factory Prodcut.fromJson(String data) {
		return Prodcut.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Prodcut] to a JSON string.
	String toJson() => json.encode(toMap());
}
