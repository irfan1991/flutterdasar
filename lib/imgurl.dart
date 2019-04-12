import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageFromUrl extends StatelessWidget {
  String url = 'http://www.udacoding.com/wp-content/uploads/2019/01/50091873_179313046362219_4720222159456753743_n-768x576.jpg';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Image From Url'),
          backgroundColor: Colors.green,
        ),
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[

          CachedNetworkImage(imageUrl:url,
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
          Text('Koleksi MobIL Tayo', style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue),),
          //add row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network( 'http://www.udacoding.com/wp-content/uploads/2019/01/50091873_179313046362219_4720222159456753743_n-768x576.jpg',
              height: 150.0,width: 150.0,
              ),
              Image.network( 'http://www.udacoding.com/wp-content/uploads/2019/01/50091873_179313046362219_4720222159456753743_n-768x576.jpg',
                height: 150.0,width: 150.0,
              ),
            ],
          )
        ],
      ),
    );
  }





}