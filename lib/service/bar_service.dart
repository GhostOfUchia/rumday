import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rumedy/models/bar_model.dart';
import 'package:rumedy/util/show_toast.dart';

class BarService {
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJodHRwczovL3J1bWVkeS1kZXZiZS5henVyZXdlYnNpdGVzLm5ldC8iLCJpc3MiOiJodHRwczovL3J1bWVkeS1kZXZiZS5henVyZXdlYnNpdGVzLm5ldC8iLCJleHAiOjE3Mjg0MDEyMjksImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiNDQwYWRlMWMtOWRjOS00MmIzLTkxMWItZjY5MzY5ZTBiODQyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkbWluIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiYWRtaW5AcnVtZWR5LmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dpdmVubmFtZSI6IlN1cGVyIEFkbWluIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiQWRtaW5pc3RyYXRvciJ9.snOGhOsJXjWN6W5KYovyvS8pooCKOuvN4xZZincPwHc";

  Future<List> getData() async {
    print("Bar Service");
    const url = "https://rumedy-devbe.azurewebsites.net/api/Tenants";
    final uri = Uri.parse(url);

    final responce = await http.get(uri, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    print(responce.body.toString());
    try {
      if (responce.statusCode == 200) {
        print("try run");
        final json = jsonDecode(responce.body) as List;
        List bars = json.map((e) {
          print("converter ");
          return BarModel.fromJson(e);
        }).toList();
        return bars;
      }
    } catch (err) {
      showToast(err.toString());
      print(err.toString());
    }
    return [];
  }
}
