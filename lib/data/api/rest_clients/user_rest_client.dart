import 'package:base_flutter/data/api/model/request/user/login_user_request.dart';
import 'package:base_flutter/data/api/model/request/user/client_check_request.dart';
import 'package:base_flutter/data/api/model/request/user/driver_check_request.dart';
import 'package:base_flutter/data/api/model/request/user/driver_mypage_request.dart';
import 'package:base_flutter/data/api/model/request/user/location_enter_request.dart';
import 'package:base_flutter/data/api/model/request/user/location_request.dart';
import 'package:base_flutter/data/api/model/request/user/login_user_request.dart';
import 'package:base_flutter/data/api/model/request/user/shipper_mypage_request.dart';
import 'package:base_flutter/data/api/model/request/user/parcel_image_request.dart';
import 'package:base_flutter/data/api/model/request/user/history_request.dart';
import 'package:base_flutter/data/api/model/response/user/user_response.dart';
import 'package:base_flutter/data/api/model/response/user/delivery_response.dart';
import 'package:base_flutter/data/api/model/response/user/delivery_list_response.dart';
import 'package:base_flutter/data/api/model/response/user/driver_response.dart';
import 'package:base_flutter/data/api/model/response/user/shipper_response.dart';
import 'package:base_flutter/data/models/driver.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';


part 'user_rest_client.g.dart';

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST("/login")
  Future<UserResponse> login(@Body() LoginUserRequest request);

  @GET("/driver/visit-info/list/{id}")
  Future<DeliveryListResponse> getVisitInfoList(@Path('id') String id);

  @GET("/driver/visit-info/{id}")
  Future<DeliveryResponse> getVisitInfo(@Path('id') String id);

  @POST("/driver/location/{id}")
  Future<dynamic> postLocation(@Body() LocationRequest request, @Path('id') String id);
  
  @POST("/driver/visit-info/enter/{id}")
  Future<DeliveryResponse> postLocationEnter(@Body() LocationEnterRequest request, @Path('id') String id);

  @POST("/driver/visit-info/ledger-image/{id}")
  Future<DeliveryResponse> postLedgerImage(@Body() imageUrl, @Path('id') String id);
  
  @DELETE("/driver/visit-info/ledger-image/{id}")
  Future<DeliveryResponse> deleteLedgerImage(@Path('id') String id);
  
  @POST("/driver/visit-info/parcel-image/{id}")
  Future<DeliveryResponse> postParcelImage(@Body() ParcelImageRequest request, @Path('id') String id);

  @DELETE("/driver/visit-info/parcel-image/{id}")
  Future<DeliveryResponse> deleteParcelImage(@Path('id') String id);
  
  @POST("/driver/visit-info/entry-time/{id}")
  Future<DeliveryResponse> postEntryTime(@Body() entryTimeMilliSecond, @Path('id') String id);

  @POST("/driver/visit-info/work-start/{id}")
  Future<DeliveryResponse> postWorkStart(@Path('id') String id);
  
  @POST("/driver/visit-info/work-start-time/{id}")
  Future<DeliveryResponse> postWorkStartTime(@Body() startTimeMilliSecond, @Path('id') String id);

  @POST("/driver/visit-info/work-end-time/{id}")
  Future<DeliveryResponse> postWorkEndTime(@Path('id') String id);

  @POST("/driver/visit-info/client-check/{id}")
  Future<DeliveryResponse> postClientCheck(@Body() ClientCheckRequest request, @Path('id') String id);

  @POST("/driver/visit-info/driver-check/{id}")
  Future<DeliveryResponse> postDriverCheck(@Body() DriverCheckRequest request, @Path('id') String id);

  @POST("/driver/visit-info/slip-image/{id}")
  Future<DeliveryResponse> postSlipImage(@Body() imageUrl, @Path('id') String id);
  
  @DELETE("/driver/visit-info/slip-image/{id}")
  Future<DeliveryResponse> deleteSlipImage(@Path('id') String id);
  
  @POST("/driver/visit-info/send/{id}")
  Future<DeliveryResponse> postHasProblem(@Body() hasProblem, @Path('id') String id);
  
  @GET("/driver/history/{id}")
  Future<DeliveryListResponse> getDriverHistoryList(@Body() HistoryRequest request, @Path('id') String id);

  @GET("/driver/history/detail/{id}")
  Future<DeliveryResponse> getDriverHistoryDetail(@Path('id') String id);

  @GET("/driver/mypage/{id}")
  Future<DriverResponse> getDriverMypage(@Path('id') String id);
  
  @POST("/driver/mypage/{id}")
  Future<DriverResponse> postDriverMypage(@Body() DriverMypageRequest request, @Path('id') String id);

  @GET("/shipper/shipping-list/{id}")
  Future<DeliveryListResponse> getShippingList(@Path('id') String id);

  @GET("/shipper/shipping/{id}")
  Future<DeliveryResponse> getShippingDetail(@Path('id') String id);  

  @GET("/shipper/history/{id}")
  Future<DeliveryListResponse> getShipperHistoryList(@Body() HistoryRequest request, @Path('id') String id);

  @GET("/shipper/history/detail/{id}")
  Future<DeliveryResponse> getShipperHistoryDetail(@Path('id') String id);

  @GET("/shipper/mypage/{id}")
  Future<ShipperResponse> getShipperMypage(@Path('id') String id);
  
  @POST("/shipper/mypage/{id}")
  Future<ShipperResponse> postShipperMypage(@Body() ShipperMypageRequest request, @Path('id') String id);

  @DELETE("/user-delete/{id}")
  Future<dynamic> getDeleteUser(@Path('id') String id);
}