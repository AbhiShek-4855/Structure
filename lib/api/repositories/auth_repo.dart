import 'dart:io';

import 'package:dio/dio.dart';
import 'package:strucuture_utils/api/base_api_helper.dart';
import 'package:strucuture_utils/models/response_item_model/response_item.dart';

import '../../constants/request_const.dart';

AuthRepo logIn = AuthRepo();

class AuthRepo {
  Future<ResponseItem> userLogin(String userName, String password) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = '${MethodNames.userLogin}';

    result = await BaseApiHelper.postRequest(
        endpoint,
        {
          "email": userName,
          "password": password,
        },
        false);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> userRegistering(
    String fullName,
    String email,
    String password,
  ) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";
    String endpoint = '${MethodNames.userRegistration}';

    result = await BaseApiHelper.postRequest(
        endpoint,
        {
          "email": email,
          "full_name": fullName,
          "password": password,
        },
        false);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> sendVerificationCode(
    String email,
  ) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = '${MethodNames.forgotPassword}';

    result = await BaseApiHelper.postRequest(
        endpoint,
        {
          "email": email,
        },
        false);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> forgetPassword(
    String email,
    String verificationCode,
    String password,
  ) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = MethodNames.changePasswordWithVerifyCode;

    result = await BaseApiHelper.postRequest(
        endpoint,
        {
          "email": email,
          "verify_code": verificationCode,
          "new_password": password,
        },
        false);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> updatePassword(
    String oldPassword,
    String newPassword,
  ) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = MethodNames.updatePassowrd;

    result = await BaseApiHelper.postRequest(
        endpoint,
        {
          "old_password": oldPassword,
          "new_password": newPassword,
        },
        true);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> getUserProfile() async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = '${MethodNames.getUserProfile}';

    result = await BaseApiHelper.postRequest(endpoint, {}, true);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }

  Future<ResponseItem> editProfile({
    String? fullName,
    File? profileImage,
  }) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = MethodNames.editProfile;

    result = await BaseApiHelper.uploadMultipartImageRequest(
        endpoint,
        {
          "full_name": fullName,
          if (profileImage != null)
            "profile_image": await MultipartFile.fromFile(profileImage.path,
                filename: profileImage.path),
        },
        true);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }
}
