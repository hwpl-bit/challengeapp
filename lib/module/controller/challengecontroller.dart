import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/challengemodel.dart';

class ChallengeController extends GetxController {
  var isLoading = false.obs;
  List<ChallengeModel>cheallengModellist=[];

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      String data = await rootBundle.loadString('assets/challenge.json');
      List<dynamic>datalist = jsonDecode(data);
      for(var data in datalist){
        cheallengModellist.add(ChallengeModel.fromJson(data));
      }
      print(data);

    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}