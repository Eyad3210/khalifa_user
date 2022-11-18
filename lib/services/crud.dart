
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:khalifa_user/utils/statues_request.dart';
import 'package:http/http.dart' as http;

import '../utils/check_internet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> getRequest(String linkurl, Map data) async {
   
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
          print(response.statusCode) ; 

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody) ; 
          
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
     
  }
}