class Recomanded {
  String image;
  String country;
  int price;
  String plantName;
  Recomanded({
    this.image,
    this.price,
    this.plantName,
    this.country,
  });
}

final List<Recomanded> recomandedd = [
  Recomanded(
    country: 'Morocco',
    image: 'assets/images/image_1.png',
    plantName: 'Samantha',
    price: 200,
  ),
  Recomanded(
    country: 'Paris',
    image: 'assets/images/image_2.png',
    plantName: 'Angelica',
    price: 200,
  ),
  Recomanded(
    country: 'China',
    image: 'assets/images/image_3.png',
    plantName: 'Samantha',
    price: 200,
  ),
];
