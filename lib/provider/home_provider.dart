import 'package:adv_exam/api%20helper/api_helper.dart';
import 'package:flutter/material.dart';

import '../model/countries_model.dart';

class HomeProvider extends ChangeNotifier {
  List<CountriesModel> mainDataList = [];

  Future<List<CountriesModel>> callingApi() async {
    List tempData = await ApiHelper.apiHelper.fetchApi();
    mainDataList = tempData
        .map(
          (e) => CountriesModel.fromJson(e),
        )
        .toList();
    return mainDataList;
  }

  HomeProvider() {
    callingApi();
  }
}
int tempIndex = 0;
