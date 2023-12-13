import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/pages/onboarding_page.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/pages/sign_in_page.dart';
import 'package:ulearning_app/features/sign_up/presentation_layer/pages/sign_up_page.dart';
import 'package:ulearning_app/features/test/home_page.dart';
import 'package:ulearning_app/features/test/page_a.dart';
import 'package:ulearning_app/features/test/page_b.dart';
import 'package:ulearning_app/features/test/profile_page.dart';
import 'package:ulearning_app/route/scaffold_with_nav_bar.dart';


// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
//every item from navi bar should take separate key
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

enum RoutePath {
  onboardingPage(path: '/'),
  signUpPage(path: '/signUp'),
  signInPage(path: '/signIn');

  //This part must be added by default
  const RoutePath({required this.path});
  final String path;
}


final goRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: RoutePath.onboardingPage.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      //onboarding page
      GoRoute(
        path: RoutePath.onboardingPage.path,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const OnboardingPage(),
          );
        },
      ),
      //sing in page
      GoRoute(
        path: RoutePath.signInPage.path,
        name: RoutePath.signInPage.name,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const SignInPage(),
          );
        },
      ),
      //sign up page
      GoRoute(
        path: RoutePath.signUpPage.path,
        name: RoutePath.signUpPage.name,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const SignUpPage(),
          );
        },
      ),
      //nested routing
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
          branches: [
            // first branch (A)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorAKey,
              routes: [
                // top route inside branch
                GoRoute(
                  path: '/HomePage',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    //return the root page of this branch
                    child: HomePage(),
                  ),
                  routes: [
                    // child route
                    GoRoute(
                      path: 'PageA',
                      //note: we use builder with children not pageBuilder
                      builder: (context, state) =>
                      const PageA(),
                      routes: [
                        GoRoute(
                          path: 'PageB',
                          builder: (context, state) =>
                          const PageB(),

                        ),
                      ]
                    ),
                  ],
                ),
              ],
            ),
            // first branch (B)
            StatefulShellBranch(
              navigatorKey: _shellNavigatorBKey,
              routes: [
                // top route inside branch
                GoRoute(
                  path: '/ProfilePage',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    //return the root page of this branch
                    child: ProfilePage(),
                  ),
                  /*routes: [
                    // child route
                    GoRoute(
                      path: 'details',
                      //note: we use builder with children not pageBuilder
                      builder: (context, state) =>
                      const SignInPage(),
                    ),
                  ],*/
                ),
              ],
            ),
          ]
      )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          key: state.pageKey,
          child: Center(
            child: Text(state.error.toString()),
          )
      );
    },
  );
});