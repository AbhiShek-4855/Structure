

import 'package:strucuture_utils/api/base_api_helper.dart';
import 'package:strucuture_utils/constants/request_const.dart';
import 'package:strucuture_utils/models/response_item_model/response_item.dart';

HomeRepo homeRepo = HomeRepo();

class HomeRepo {
  Future<ResponseItem> getCategories({required int page,required int limit}) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = '${MethodNames.getCategories}';

    result = await BaseApiHelper.postRequest(endpoint, {
      "page":page,
      "limit":limit
    }, true);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }
  Future<ResponseItem> getPodcast({
    required int page,
    required int categoryId,
    required String filterType,
      String? searchText,
  }) async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    String endpoint = '${MethodNames.getPodcast}';

    result = await BaseApiHelper.postRequest(endpoint, {
      "page":page,
      "limit":HORIZONTALLIMIT,
      "filter_type":filterType,
      if(searchText!= null)"search_text":searchText
      // "category_id":categoryId
    }, true);
    status = result.status;
    data = result.data;
    message = result.message;
    return ResponseItem(data: data, message: message, status: status);
  }
}