class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Writing things together is what we do best!', category: 'COLLABORATION', imageUrl: 'images/1.png',),
  new IntroItem(title: 'Occasionally wearing pants is a good idea.', category: 'CULTURE', imageUrl: 'images/2.png',),
  new IntroItem(title: 'We might have the best team spirit ever.', category: 'LINE', imageUrl: 'images/3.png',),
];