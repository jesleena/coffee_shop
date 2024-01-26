import 'package:coffee_shop/pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/coffee_tile.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return

      Consumer<CoffeeShop>(
        builder: (context, value, child) =>
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                    children: [
                    const Text ('Your Cart',style: TextStyle(fontSize: 20)),

                    Expanded(
                      child: ListView.builder(
                        itemCount: value.userCart.length,
                          itemBuilder: (context,index){
                        // get individual cart items
                        Coffee eachCoffee = value.userCart[index];
                        // return coffee tile
                        return CoffeeTile(coffee: eachCoffee,
                            onPressed:()=> removeFromCart(eachCoffee),
                            icon: const Icon(Icons.delete));
                      }),
                    ),
                      ///pay button
                // pay button
                GestureDetector(
                  onTap: payNow,
                  child: Container(
                      padding: const EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(12),
                      ), // BoxDecoration
                      child: const Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white),
                        ), ), // Center ), // Container
                      ) )

                    ]),
              ),
            ));
  }

  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Deleted from the cart"),
        ));

  }

  void payNow() {
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Payment()));
  }
}
