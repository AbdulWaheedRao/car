// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Favourite {
  String name;
  String price;
  Favourite({
    required this.name,
    required this.price,
  });

  Favourite copyWith({
    String? name,
    String? price,
  }) {
    return Favourite(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
    };
  }

  factory Favourite.fromMap(Map<String, dynamic> map) {
    return Favourite(
      name: map['name'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Favourite.fromJson(String source) =>
      Favourite.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Favourite(name: $name, price: $price)';

  @override
  bool operator ==(covariant Favourite other) {
    if (identical(this, other)) return true;

    return other.name == name && other.price == price;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode;
}
