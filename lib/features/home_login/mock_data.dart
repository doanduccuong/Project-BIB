import 'package:base_flutter/features/home_login/model/city_model.dart';
import 'package:base_flutter/features/home_login/model/district_model.dart';
import 'package:base_flutter/features/home_login/model/province_model.dart';

class MockData {
  static List<ProvinceModel> mockData = [
    ProvinceModel(
      districtList: [
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street B", "Street C", "Street D"])
          ],
          districtName: 'Đất Đỏ',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street B", "Street C", "Street D"])
          ],
          districtName: 'Xuyên Mộc',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street B", "Street C", "Street D"])
          ],
          districtName: 'Long Điền',
        ),
      ],
      provinceName: 'An Giang',
    ),
    ProvinceModel(
      districtList: [
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street 1", "Street 2", "Street 3"])
          ],
          districtName: 'Thanh Xuan',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street 1", "Street 2", "Street 3"])
          ],
          districtName: 'Hai Ba Trung',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street 1", "Street 2", "Street 3"])
          ],
          districtName: 'Ba Dinh',
        ),
      ],
      provinceName: 'Ha Noi',
    ),
    ProvinceModel(
      districtList: [
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street", "Street", "Street"])
          ],
          districtName: 'Quận 1',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street", "Street", "Street"])
          ],
          districtName: 'Quận 1',
        ),
        DistrictModel(
          listCity: [
            CityModel(streetList: ["Street", "Street", "Street"])
          ],
          districtName: 'Quận 1',
        ),
      ],
      provinceName: 'Hồ Chí Minh',
    )
  ];
}
