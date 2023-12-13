import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final onboardingPageControllerProvider = Provider.autoDispose<PageController>((ref){
  return PageController(initialPage: 0);
});