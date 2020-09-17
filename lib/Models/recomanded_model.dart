class Recomanded {
  String image;
  String country;
  int price;
  String plantName;
  String id;
  Recomanded({
    this.image,
    this.price,
    this.plantName,
    this.country,
    this.id,
  });
}

final List<Recomanded> recomandedd = [
  Recomanded(
    id: '1',
    country: 'Morocco',
    image: 'assets/images/image_1.png',
    plantName: 'Samantha',
    price: 200,
  ),
  Recomanded(
    id: '2',
    country: 'Paris',
    image: 'assets/images/image_2.png',
    plantName: 'Angelica',
    price: 200,
  ),
  Recomanded(
    id: '3',
    country: 'China',
    image: 'assets/images/image_3.png',
    plantName: 'Samantha',
    price: 200,
  ),
];
