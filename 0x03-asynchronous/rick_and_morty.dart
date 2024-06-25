import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> printRmCharacters() async {
  try {
    var uri = Uri.https('rickandmortyapi.com', '/api/character');
    final response = await http.get(uri);
    Map<dynamic, dynamic> data = convert.jsonDecode(response.body);
    List<dynamic> characters = data['results'];
    for (var character in characters) {
      print(character['name']);
    }
  } catch (err) {
    print('error caught: $err');
  }
}