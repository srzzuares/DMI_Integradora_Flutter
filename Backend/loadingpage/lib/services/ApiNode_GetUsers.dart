import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

getUserAll() async {
  final uri = Uri.parse("http://127.0.0.7:20052/player/getAll");
  final response = await http.get(uri);
}
