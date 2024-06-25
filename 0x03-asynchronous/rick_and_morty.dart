import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to fetch characters. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}