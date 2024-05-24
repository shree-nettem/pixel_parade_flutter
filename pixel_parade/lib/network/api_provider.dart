import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pixel_parade/models/banner_model.dart';
import 'package:pixel_parade/models/stickers_model.dart';
import 'package:pixel_parade/network/api_constants.dart';
import 'package:pixel_parade/network/logging_intercepator.dart';
import 'package:pixel_parade/network/session_manager/session_manager.dart';

class ApiProvider {
  static final ApiProvider apiProvider = ApiProvider._internal();

  factory ApiProvider() {
    return apiProvider;
  }

  ApiProvider._internal();

  static BaseOptions options = BaseOptions(
    receiveTimeout: const Duration(seconds: 90),
    connectTimeout: const Duration(seconds: 90),
    baseUrl: ApiConstants.baseUrl,
  );

  Future<Options> getHeaderOptions() async {
    String jwtToken = await SessionManager.getToken() ?? "";

    debugPrint(jwtToken);
    return Options(headers: {
      "Authorization": jwtToken,
    });
  }

  static final Dio _dio = Dio(options)..interceptors.add(LoggingInterceptor());

  Future<bool> createToken() async {
    try {
      Response response = await _dio.get(
        ApiConstants.token,
      );
      if (response.statusCode == 200) {
        SessionManager.setToken(response.data);
        return true;
      } else {
        debugPrint(response.data.toString());
        return false;
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  Future<BannerModel?> getBanner() async {
    try {
      Response response = await _dio.get(
        ApiConstants.banner,
      );
      if (response.statusCode == 200) {
        return bannerFromJson(response.data);
      } else {
        debugPrint(response.data.toString());
        return null;
      }
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  Future<List<TotalStickers>?> getStickers() async {
    try {
      Options headerOptions = await getHeaderOptions();
      Response response = await _dio.get(
          ApiConstants.stickerPackagesByPage(pageNumber: 1),
          options: headerOptions);
      if (response.statusCode == 200) {
        return totalStickersFromJson(response.data);
      } else {
        debugPrint(response.data.toString());
        return null;
      }
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  Future<List<String>?> getKeywords() async {
    try {
      Options headerOptions = await getHeaderOptions();
      Response response =
          await _dio.get(ApiConstants.keySearchWords, options: headerOptions);
      if (response.statusCode == 200) {
        return keywordsModelFromJson(response.data);
      } else {
        debugPrint(response.data.toString());
        return null;
      }
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }
}
