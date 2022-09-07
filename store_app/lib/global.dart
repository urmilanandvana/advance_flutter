class Global {
  static String? name;
  static String? email;
  static String? location;
  static int? total;
  static List<AddModel> allItems = [];
  static List<Map> items = [
    {
      'id': 1,
      'image':
          'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      'name': 'Vagabond sack',
      'price': "120",
    },
    {
      'id': 2,
      'image':
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
      'name': 'Stella Sunglasses',
      'price': "58",
    },
    {
      'id': 3,
      'image':
          'https://media.istockphoto.com/photos/kit-of-timing-belt-with-rollers-auto-parts-picture-id674948800?k=20&m=674948800&s=612x612&w=0&h=FmRSUYF0sbTWXc5BB4kEjYP1QSkawbni0i-WwViZ5Zg=',
      'name': 'Whitney Belt',
      'price': "35",
    },
    {
      'id': 4,
      'image': 'https://m.media-amazon.com/images/I/81D8eTdItmL._UL1500_.jpg',
      'name': 'Garden Strand',
      'price': "98",
    },
    {
      'id': 5,
      'image':
          'https://images.unsplash.com/photo-1615655114865-4cc1bda5901e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZWFycmluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
      'name': 'Strut Earring',
      'price': "35",
    },
    {
      'id': 6,
      'image':
          'https://images.unsplash.com/photo-1624623805782-db1b577930e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'name': 'Varsity Socks',
      'price': "12",
    },
    {
      'id': 6,
      'image': 'https://i.ebayimg.com/images/g/9BYAAOSw7g5daJXg/s-l400.jpg',
      'name': 'Weave Keyring',
      'price': "25",
    },
  ];
}

class AddModel {
  final String? image;
  final String? name;
  final String? price;
  int? total;

  AddModel({
    required this.image,
    required this.name,
    required this.price,
    required this.total,
  });
}
