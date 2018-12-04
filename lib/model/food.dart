
class Food {

  final String price;
  final String name;
  final String image;
  final String id;
  final String description;
  final int quantity;


  const Food({
    this.id,
    this.image,
    this.name,
    this.price,
    this.quantity: 0,
    this.description
  }): assert(quantity != null && quantity >= 0);

  Food copyWith({String id, String image, String name, String price, int quantity}){
    return new Food(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
    );
  }
}