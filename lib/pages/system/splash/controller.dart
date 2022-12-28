import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  // _initData() {
  //   update(["splash"]);
  // }

  void onTap() {}

  _jumpToPage() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      if (ConfigService.to.isAlreadyOpen) {
        // Get.offAllNamed(RouteNames.main);
        Get.offAllNamed(RouteNames.stylesStylesIndex);
      } else {
        Get.offAllNamed(RouteNames.systemWelcome);
      }
    });
    // 跳转主页面
    // Get.offAllNamed(RouteNames.main);
    // 跳转页面
    // if (ConfigService.to.isAlreadyOpen) {
    //   Get.offAllNamed(RouteNames.main);
    // } else {
    //   Get.offAllNamed(RouteNames.systemWelcome);
    // }
    // 欢迎页
    // Future.delayed(const Duration(seconds: 1), () {
    //   Get.offAllNamed(RouteNames.systemWelcome);
    // });
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove(); // 删除设备启动图
    // _initData(); // 初始化数据
    _jumpToPage(); // 跳转页面
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
