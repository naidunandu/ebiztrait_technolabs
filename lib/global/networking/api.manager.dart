import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:ebiztrait_technolabs/global/constants.dart';
import 'package:ebiztrait_technolabs/global/networking/api.config.dart';
import 'package:ebiztrait_technolabs/global/utilities/app.helper.dart';
import 'package:ebiztrait_technolabs/models/response.model.dart';

//app package

Dio dio = new Dio();
ApiConfig _apiConfig = ApiConfig();
AppHelper _helper = AppHelper();

class Apis {
  Apis() {
    dio.options
      ..baseUrl = _apiConfig.API_URL
      ..headers = {'Accept': 'application/json'};
  }

  Future<ResponseModel> checkStatus(response) async {
    print("statusCode : ${response.statusCode}");
    print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return ResponseModel(
        status: response.data['status_code'],
        message: response.data['message'],
        data: response.data['data'],
      );
    } else if (response.statusCode == 422) {
      return ResponseModel(
        status: 422,
        message: 'validation failed',
        data: response.data,
      );
    } else {
      _helper.errorMessage('Something went wrong. Try again after some time');
      return ResponseModel(
        status: 500,
        message: response.statusMessage,
        data: null,
      );
    }
  }

  //TO GET FULL PATH WITH PARAMETERS OR CREATING QUERY STRING
  static Future<String> getFullUrl(String apiName, List params) async {
    String _url = "";
    if (params.isNotEmpty) {
      _url = apiName + "?";
      for (int i = 0; i < params.length; i++) {
        _url = _url + '${params[i]["key"]}=${params[i]["value"]}';
        if (i + 1 != params.length) _url = _url + "&";
      }
    } else {
      _url = apiName;
    }
    return _url;
  }

  //GET METHOD
  // ignore: missing_return
  Future<ResponseModel> getApi(String apiName, List params) async {
    ResponseModel apiData = ResponseModel(message: 'No Data', status: 0, data: null);
    try {
      print("API : start");
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        print("API : ${Constants.NO_INTERNET}");
        _helper.alertMessage(Constants.NO_INTERNET);
        return apiData;
      } else {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          print("API : internet connected");

          String url = await getFullUrl(apiName, params);
          print("$apiName URL: " + url);

          final response = await dio.get(url);
          apiData = await checkStatus(response);
          return apiData;
        } else {
          return apiData;
        }
      }
    } on SocketException catch (e) {
      print("API : SocketException - ${e.toString()}");
      _helper.alertMessage(Constants.NO_INTERNET);
      return apiData;
    } on Exception catch (e) {
      print("API : Exception - ${e.toString()}");
      _helper.alertMessage(Constants.SOMETHING_WENT_WRONG);
      return apiData;
    }
  }

  //POST METHOD
  // ignore: missing_return
  Future<ResponseModel> postApi(String apiName, body) async {
    ResponseModel apiData = ResponseModel(message: 'No Data', status: 0, data: null);
    try {
      print("API : start"); //do not delete
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        print("API : ${Constants.NO_INTERNET}");
        _helper.alertMessage(Constants.NO_INTERNET);
        return apiData;
      } else {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          print("API : internet connected");

          String authToken = _helper.getStorage('authToken');
          dio.options.headers["Authorization"] = "Bearer $authToken";

          final response = await dio.post(apiName, data: body);
          apiData = await checkStatus(response);
          return apiData;
        } else {
          return apiData;
        }
      }
    } on SocketException catch (e) {
      print("API : SocketException - ${e.toString()}");
      _helper.alertMessage(Constants.NO_INTERNET);
      return apiData;
    } on Exception catch (e) {
      print("API : Exception - ${e.toString()}");
      _helper.alertMessage(Constants.SOMETHING_WENT_WRONG);
      return apiData;
    }
  }
}
