import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Assets Image Example',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Assets Image Example'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Image from Assets',
                  style: TextStyle(fontSize: 20.0),
                )),
            AssetsFromImage(),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Image from Network',
                  style: TextStyle(fontSize: 20.0),
                )),
            ImageFromNetwork()
          ],
        ),
      ),
    );
  }
}

class AssetsFromImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/parrot.png');
    Image image = Image(
      image: assetImage,
      width: 500.0,
      height: 200,
    );

    return Container(
      child: image,
    );
  }
}

class ImageFromNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );
  }
}
