import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/utils/app_styles.dart';
import 'package:ulearning_app/route/go_router_provider.dart';


void main() {
  runApp(const ProviderScope(child: ULearnApp()));
}

class ULearnApp extends ConsumerWidget {
  const ULearnApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //object from riverpod provider to use it with go_router configurations below.
    final router = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(411, 890),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          //go_router package configurations
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          //custom theme class
          theme: AppTheme.appThemeData,
        );
      },
    );
  }
}
