
import 'dart:convert';
import 'dart:io';


import '../models/api_model.dart';

class GetApi {
   final client = HttpClient();

   Future<dynamic> getApi() async {
      final url = Uri.parse('https://flutter.webspark.dev/flutter/api');
      final request = await client.getUrl(url);
      final response = await request.close();
      final jsonStrings = await response.transform(utf8.decoder).toList();
      final jsonString = jsonStrings.join();
      print(jsonString);
      final json = jsonDecode(jsonString) ;
      print(json);
      final result  = GetInfoResponse.fromJson(json as Map<String,dynamic>);

       return result;
   }
}