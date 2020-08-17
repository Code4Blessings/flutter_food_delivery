import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 220.0,
                width: MediaQuery.of(context).size.width,
                image: AssetImage(widget.restaurant.imageUrl),
                fit: BoxFit.cover,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 30.0,
                    onPressed: () => Navigator.pop(context)
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
