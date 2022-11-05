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
      """I'm a creative mobile developer with 2+ years of experience building mobile applications for Android and iOS. I have worked on a few different projects, ranging in size from small to large. Not only that, but I have a passion for building great user experiences, and I am always looking for new opportunities to learn and grow as a developer.""",
  image: 'assets/images/pics.jpg',
  name: 'David Odejobi',
);
