import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  double size;

  Products(this.size, [this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/COA_Logo-small.png",
            width: size,
          ),
          Text(
            products[index],
            style: TextStyle(color: Colors.cyan),
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Center(child: Text("Nothing to show"));
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
