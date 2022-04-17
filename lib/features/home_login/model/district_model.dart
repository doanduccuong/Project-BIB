import 'package:base_flutter/features/home_login/model/city_model.dart';

class DistrictModel{
  String districtName;
  List<CityModel> listCity;
  DistrictModel({required this.listCity,required this.districtName});
}