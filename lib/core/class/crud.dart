import 'dart:convert';
import 'package:api_task_6/core/class/helper_functions.dart';
import 'package:api_task_6/core/class/status_request.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map<String, dynamic>>> getData(String link,
      {Map<String, String>? headers}) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response = await http.get(Uri.parse(link), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> postData(String link,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response = await http.post(Uri.parse(link), headers: headers, body: body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverFailure);
    }
  }
}