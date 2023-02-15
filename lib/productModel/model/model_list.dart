
class CategoryModel{

  static final iteams=[
    Items(
      image: 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
      des: 'Vivo phone of the larget phone and user frindly',
      id: '1',
      price: 7678,
      color: '#33505a',
      name: 'Fluter 3.9',

    )
  ];


}


class Items{

final String name;
final String id;
final  String des;
final num price;
final String color;
final String image;

Items({required this.name, required this.id, required this.des, required this.price, required this.color, required this.image});

}





