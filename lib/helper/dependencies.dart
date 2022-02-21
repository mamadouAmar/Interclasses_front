import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projet1/data/api/api_client.dart';
import 'package:projet1/data/repository/popular_product_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
}
  