import 'package:http/http.dart' as http;

Future<http.Response>get(String url) async{
  final headers = await _headers();
  var response = await http.get(url, headers: headers);
  return response;
}

Future<http.Response>post(String url, String body) async{
  final headers = await _headers();
  var response = await http.post(Uri.encodeFull(url),headers: headers,body: body);
  return response;
}

Future<Map<String, String>> _headers() async{
  Map<String, String> headers = {
    "Content-Type":"application/json",
  };
  return headers;
}