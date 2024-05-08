import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  String title;
  String desc;
  String price;
  String color;
  String image;

  Product({
    required this.title,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Nike SB Zoom Blazer Mid Premium',
      desc: '',
      price: '\$8.795',
      color: 'purple',
      image: 'https://ucarecdn.com/b7c60046-fc89-4965-a1e8-7857aeecc436/sb_blazer.png',
    ),
    Product(
      title: 'Nike Air Zoom Pegasus',
      desc: 'Men\'s Road Running Shoes',
      price: '\$9.995',
      color: 'sky',
      image: 'https://ucarecdn.com/af0cdbda-e1bd-40f8-a9bb-87e825511e74/air_zoom.png',
    ),
    Product(
      title: 'Nike ZoomX Vaporfly',
      desc: 'Men\'s Road Racing Shoes',
      price: '\$19.695',
      color: 'pink',
      image: 'https://ucarecdn.com/973d050b-5f8a-43b4-931e-27167336ed1b/zoomx.png',
    ),
    Product(
      title: 'Nike Air Force 1 s50',
      desc: 'Older Kids Shoes',
      price: '\$6.295',
      color: 'gray',
      image: 'https://ucarecdn.com/5f2fa1b0-423c-427f-bb72-0814b225d4f7/air_force.png',
    ),
    Product(
      title: 'Nike Waffle One',
      desc: 'Mens Shoes',
      price: '\$8.295',
      color: 'yellow',
      image: 'https://ucarecdn.com/eb960564-eeb7-41e7-a420-88884f02dad6/waffle_one.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoes'),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://ucarecdn.com/5f30f491-4ade-4877-80be-ebc3d96f526b/profileMe.jpg',
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              color: _getColor(products[index].color),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            products[index].title,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            products[index].desc,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            products[index].price,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Color _getColor(String color) {
    switch (color) {
      case 'purple':
        return Colors.purple;
      case 'sky':
        return Colors.lightBlue;
      case 'pink':
        return Colors.pink;
      case 'gray':
        return Colors.grey;
      case 'yellow':
        return Colors.yellow;
      default:
        return Colors.white;
    }
  }
}
