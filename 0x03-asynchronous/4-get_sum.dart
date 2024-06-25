import '4-util.dart';
import 'dart:convert' as convert;

Future<String> calculateTotal() async {
  double totalPrice = 0.0;
  try {
    var userData = await fetchUserData();
    Map<String, dynamic> user = convert.jsonDecode(userData);
    var userId = user['id'];
    var userOrders = await fetchUserOrders(userId);
    List<dynamic> orders = convert.jsonDecode(userOrders);
    for (var item in orders) {
      var itemPriceString = await fetchProductPrice(item);
      var itemPrice = convert.jsonDecode(itemPriceString);
      totalPrice += itemPrice;
    }

    return totalPrice.toString();
  } catch (e) {
    return '-1';
  }
}