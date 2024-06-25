import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    String userId = user['id'];

    // Fetch user orders
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = json.decode(ordersData);

    // Calculate total price
    double totalPrice = 0;
    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = json.decode(priceData);
      totalPrice += price;
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }
}