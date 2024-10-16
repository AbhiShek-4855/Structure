// ignore_for_file: constant_identifier_names



import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

final preferences = SharedPreference();

class SharedPreference {
  SharedPreferences? _preferences;

  init() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  static const String IS_LOGGED_IN = "isLoggedIn";
  static const String USER_EMAIL = "userEmail";
  static const String USER_FULL_NAME = "userFullName";
  static const String USER_MOBILE_NUMBER = "userMobileNUmber";
  static const String USER_INFO = "userInfo";
  // static const String SAVED_SEARCH_COUNT_LIST = "savedSearchCountList";

  // static const APP_DEVICE_TYPE = "App-Device-Type";
  // static const APP_STORE_VERSION = "App-Store-Version";
  // static const APP_DEVICE_MODEL = "App-Device-Model";
  // static const APP_OS_VERSION = "App-Os-Version";
  // static const APP_STORE_BUILD_NUMBER = "App-Store-Build-Number";
  static const AUTH_TOKEN = "Auth-Token";
   static const REMEMBER_ME = "remember_me";


  static const USER_ID = "userId";
  static const IS_NORMAL_VIEW = "isNormalView";



  static const RECENTLY_VIEWED_LIST = "recently_viewed_list";

  void clearUserItem() async {
    _preferences!.remove(IS_LOGGED_IN);
    _preferences!.remove(USER_ID);
    _preferences!.clear();

    // Get.offAllNamed(Routes.loginScreen);
    // Get.find<BottomNavigationBarController>().currentIndex.value = 0;
    // Get.find<BottomNavigationBarController>().update();

  }

  // setSavedSearchCount(SaveSearchModel saveSearchData) {
  //   // List<String> cartData = taskFilter.taskTypeList.map((e) {
  //   //   return jsonEncode(e.toJson());
  //   // }).toList();
  //   try{
  //
  //
  //   List<String> dataList =
  //       preferences.getList(SharedPreference.SAVED_SEARCH_COUNT_LIST) ?? [];
  //   if(dataList.isNotEmpty){
  //
  //     String data = jsonEncode(saveSearchData.toJson());
  //
  //
  //     if(dataList.contains(data)){
  //       dataList.remove(data);
  //       dataList.add(data);
  //       preferences.putList(SharedPreference.SAVED_SEARCH_COUNT_LIST, dataList);
  //     }else{
  //       dataList.add(jsonEncode(saveSearchData.toJson()));
  //       preferences.putList(SharedPreference.SAVED_SEARCH_COUNT_LIST, dataList);
  //     }
  //
  //   }else{
  //     dataList = [jsonEncode(saveSearchData.toJson())];
  //     preferences.putList(SharedPreference.SAVED_SEARCH_COUNT_LIST, dataList);
  //   }
  //   }catch(e){
  //     print(e);
  //   }
  //
  //
  //
  // }

  // getSavedSearchCount( ) {
  //   List<String> dataList =
  //       preferences.getList(SharedPreference.SAVED_SEARCH_COUNT_LIST) ?? [];
  //   List<SaveSearchModel> cartList = [];
  //   for (var element in dataList) {
  //     cartList.add(SaveSearchModel.fromJson(jsonDecode(element)));
  //   }
  //   return cartList;
  // }

  // static UserData? getUserModel() {
  //   String encodedModel = preferences.getString(USER_DATA) ?? "";
  //   if (encodedModel.isEmpty) {
  //     return null;
  //   } else {
  //     Map<String, dynamic> model = jsonDecode(encodedModel);
  //     return UserData.fromJson(model);
  //   }
  // }

  Future<bool?> putString(String key, String value) async {
    return _preferences?.setString(key, value);
  }

  Future<bool?> putList(String key, List<String> value) async {
    return _preferences?.setStringList(key, value);
  }

  List<String>? getList(String key, {List<String> defValue = const []}) {
    return _preferences == null
        ? defValue
        : _preferences!.getStringList(key) ?? defValue;
  }

  String? getString(String key, {String defValue = ""}) {
    return _preferences == null
        ? defValue
        : _preferences!.getString(key) ?? defValue;
  }

  Future<bool?> putInt(String key, int value) async {
    return _preferences?.setInt(key, value);
  }

  int? getInt(String key, {int defValue = 0}) {
    return _preferences == null
        ? defValue
        : _preferences?.getInt(key) ?? defValue;
  }

  Future<bool?> putDouble(String key, double value) async {
    return _preferences?.setDouble(key, value);
  }

  double getDouble(String key, {double defValue = 0.0}) {
    return _preferences == null
        ? defValue
        : _preferences?.getDouble(key) ?? defValue;
  }

  Future<bool?> putBool(String key, bool value) async {
    return _preferences?.setBool(key, value);
  }

  bool? getBool(String key, {bool defValue = false}) {
    return _preferences == null
        ? defValue
        : _preferences?.getBool(key) ?? defValue;
  }
}
