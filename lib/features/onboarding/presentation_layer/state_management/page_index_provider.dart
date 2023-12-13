import 'package:flutter_riverpod/flutter_riverpod.dart';


final pageIndexProvider = StateProvider.autoDispose<int>((ref){
  return 0;
});