import 'package:base_flutter/features/home_login/model/city_model.dart';
import 'package:base_flutter/features/home_login/model/district_model.dart';

class ProvinceModel{
  String provinceName;
  List<DistrictModel> districtList;
  ProvinceModel({required this.districtList,required this.provinceName});
}