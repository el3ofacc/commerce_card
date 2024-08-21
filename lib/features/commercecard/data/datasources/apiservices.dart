import 'dart:convert';

import 'package:commerce_card/features/commercecard/data/models/devicemodel.dart';
import 'package:http/http.dart' as http;

class Apiservices {
  List<devicemodel> devicelist = [];
  Future<List<devicemodel>> fetchdata(String company) async {
    try {
      var response = await http.get(Uri.parse(
'https://newsapi.org/v2/everything?q=$company&from=2024-08-20&to=2024-08-20&sortBy=popularity&apiKey=1b18c3db3142420d858568ab22b38ee1'));
      if (response.statusCode == 200) {
        var jsonbody = jsonDecode(response.body)['articles'] as List;
        devicelist =
            jsonbody.map((json) => devicemodel.fromJson(json)).toList();
        return devicelist;
      } else {
        print('nodata');
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
