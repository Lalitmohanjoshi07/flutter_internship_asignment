import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_internship_asignment/presentation/homeScreen/pages/home_screen.dart';
import 'package:flutter_internship_asignment/presentation/login/pages/login.dart';
import 'package:flutter_internship_asignment/presentation/login/pages/otp.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen(), routes: [
      GoRoute(
        path: 'otp',
        builder: (context, state) => const OtpScreen(),
      ),
    ]),
  ],
  redirect: (context, state) {
    if (FirebaseAuth.instance.currentUser == null) {
      return '/login';
    } else {
      return null;
    }
  },
  // errorPageBuilder:
);
