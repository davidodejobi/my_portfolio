class PortfolioModel {
  final String stack;
  final String description;
  final String image;
  final String name;

  PortfolioModel({
    required this.stack,
    required this.description,
    required this.image,
    required this.name,
  });
}

final portfolio = PortfolioModel(
  stack: 'Mobile Developer',
  description:
      """Hola! mi nombre es Miguel y tengo gran afinidad hacía el trabajo colaborativo, me gusta crear 

el flujo de trabajo para la producción de interfaces de usuario. Praesent egestas neque eu enim. Nullam tincidunt adipiscing enim. In turpis. Pellentesque commodo eros a enim.

Cras ultricies mi eu turpis hendrerit fringilla. Ut non enim eleifend felis pretium feugiat. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Aenean massa.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Vestibulum suscipit nulla quis orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus gravida semper nisi.

Proin viverra, ligula sit amet ultrices semper, ligula arcu tristique sapien, a accumsan nisi mauris ac eros. Proin faucibus arcu quis ante. Fusce a quam. Nulla sit amet est.""",
  image: 'assets/images/pics.jpg',
  name: 'David Odejobi',
);
