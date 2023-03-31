void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'shampoo', 'price': 10.5, 'quantity': 100},
    {'name': 'soap', 'price': 20.3, 'quantity': 200},
    {'name': 'orange', 'price': 30.4, 'quantity': 150},
    {'name': 'facewash', 'price': 15.8, 'quantity': 75},
    {'name': 'ring', 'price': 41.2, 'quantity': 30},
  ];

  products.sort((a, b) =>
      (b['price'] * b['quantity']).compareTo(a['price'] * a['quantity']));

  print(products);
}
