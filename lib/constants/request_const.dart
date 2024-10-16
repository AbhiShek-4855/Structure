
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strucuture_utils/utils/shared_pref.dart';

const googlePlaceApiKey = 'AIzaSyBW2lNACF33blWT8b7DcrSerbbXU6yujpo';
String errorText = "Something want wrong";
ValueNotifier<bool> hasInternet = ValueNotifier(true);

double sw = 500;

class AppUrls {
  static const String baseUrl =
      "https://codonnier.tech/parth/bookclublm/dev/Service.php?";


}

const int LIMIT = 20;

final Size size = MediaQuery.of(Get.context!).size;

class MethodNames {
  static const userLogin = "login";

  static const userRegistration = "register";
  static const forgotPassword = "forgotPassword";
  static const changePasswordWithVerifyCode = "changePasswordWithVerifyCode";
  static const updatePassowrd = "changePassword";
  static const getUserProfile = "getUserProfile";
  static const editProfile = "editProfile";
  static const likeDislikePodcast = "likeDislikePodcast";

  // home tab
  static const getCategories = "getCategories";
  static const getPodcast = "getPodcast";

  // PlayList tab
  static const addPlayList = "addPlayList";
  static const addPodcastToPlayList = "addPodcastToPlayList";
  static const getMyPlayList = "getMyPlayList";
  static const getPlayListPodcasts = "getPlayListPodcasts";

}

class RequestParam {
  static const service = "Service"; // -> pass method name
  static const showError = "show_error"; // -> bool in String
}
const int HORIZONTALLIMIT = 5;
const int VERTICLELIMIT = 20;
class AppImageUrl{
  static const String baseProfileUrl =
      "https://codonnier.tech/parth/bookclublm/app_images/profile_images/";

  static const String baseCategoryImageUrl =
      "https://codonnier.tech/parth/bookclublm/app_images/category_image/";
  static const String basePodcastImageUrl =
      "https://codonnier.tech/parth/bookclublm/app_images/podcast_images/";
  static const String basePodcastAudioLinkUrl =
      "https://codonnier.tech/parth/bookclublm/app_images/podcasts/";
}

// class RequestHeaderKey {
//   static const contentType = "Content-Type";
//   static const userAgent = "User-Agent";
//   static const appSecret = "App-Secret";
//   static const appTrackVersion = "App-Track-Version";
//   static const appDeviceType = "App-Device-Type";
//   static const appStoreVersion = "App-Store-Version";
//   static const appDeviceModel = "App-Device-Model";
//   static const appOsVersion = "App-Os-Version";
//   static const appStoreBuildNumber = "App-Store-Build-Number";
//   static const authToken = "Auth-Token";
//   static const accessControlAllowOrigin = "Access-Control-Allow-Origin";
// }

Map<String, String> requestHeaders(bool passAuthToken) {
  return {
    "Content-Type": "application/json",
    "App-Track-Version": "v1",
    "App-Device-Type": "iOS",
    "App-Store-Version": "1.1",
    "App-Device-Model": "iPhone 8",
    "App-Os-Version": "iOS 11",
    "App-Store-Build-Number": "1.1",
    "App-Secret": "BookClubLm@1210#",
    if (passAuthToken)
      "Auth-Token": preferences.getString(SharedPreference.AUTH_TOKEN) ?? "",
  };
}
