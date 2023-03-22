import 'package:get/get.dart';
import '../view/screens/dashboard.dart';
import '../view/screens/splash_screen.dart';

class SplashController extends GetxController{

  @override
  void onReady() {
    initSplash();
    super.onReady();
  }

  void initSplash() async{
    await Future.delayed(const Duration(seconds: 3));
    navigateToDashboard();
  }


  navigateToDashboard(){
    Get.offAllNamed("/intro");
  }
}

class SplashRoute {
  static List<GetPage> routes(){
    return [
    GetPage(name: "/", page: () => SplashScreen()),
    GetPage(name: "/intro", page: () => const  Dashboard()),
  ];
  }
}

class InitialBindings implements Bindings{
  @override
  void dependencies(){
    Get.put(SplashController(), permanent: true);
  }

}