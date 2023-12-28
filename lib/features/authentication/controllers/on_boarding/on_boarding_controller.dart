import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController =PageController();
  Rx<int> currentPageIndex =0.obs;

  ///update Current Index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value=index;
  }

  ///jump to specific dot page selected
  void dotNavigationClick(index) {
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  ///jump to next page and update current selected
  void nextPage() {
    if(currentPageIndex == 2){
      //LoginScreen( )
    }
    else {
      int page = currentPageIndex.value+1;
    pageController.jumpToPage(page);
    }

  }

  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpTo(2);
  }
}
