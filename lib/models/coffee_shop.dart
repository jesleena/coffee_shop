import 'package:flutter/material.dart';
import 'coffee.dart';


class CoffeeShop extends ChangeNotifier{
// coffee for sale list
  final List<Coffee> _shop = [
// black coffee
  Coffee(
  name:'Long Black',
  price:"4.10",
  image:"assets/images/black.png",
  ),
// latte
  Coffee(
  name: 'Latte',
  price: "4.20",
  image: "assets/images/latte.png",
    //assets/images/black.png
  ),
// espresso
  Coffee(
  name: 'Espresso',
  price: "4.0",
  image: "assets/images/espresso.png",
  ),
// iced coffee
  Coffee(
  name: 'Iced Coffee',
  price: "4.10",
  image: "assets/images/icecoffee.png",
  ),];
// user cart
  List<Coffee>_userCart = [];
// get coffee list
  List<Coffee> get coffeeShop=> _shop;
  // get user cart
  List<Coffee> get userCart => _userCart;

// add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    print(_userCart.length);
    notifyListeners();
  }
// remove item from cart
  void removeItemFromCart (Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }}