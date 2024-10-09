import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/router_constants.dart';
import 'package:st_joseph_school/screens/achievements_screen/achievements_screen.dart';
import 'package:st_joseph_school/screens/home_screen/home_screen.dart';
import 'package:st_joseph_school/screens/login_screen/login_screen.dart';
import 'package:st_joseph_school/screens/notice_board_screen/notice_board_screen.dart';
import 'package:st_joseph_school/screens/photo_gallery_screen/photo_gallery_screen.dart';
import 'package:st_joseph_school/screens/story_screen/story_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      //Route for login screen
      case RouterStrings.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      //Route for home screen
      case RouterStrings.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      //Route for story screen
      case RouterStrings.storyScreen:
        return MaterialPageRoute(
          builder: (_) => const StoryScreen(),
        );

      //Route for photo gallery screen
      case RouterStrings.photoGalleryScreen:
        return MaterialPageRoute(
          builder: (_) => const PhotoGalleryScreen(),
        );

      //Route for achievements screen
      case RouterStrings.achievementsScreen:
        return MaterialPageRoute(
          builder: (_) => const AchievementsScreen(),
        );

      //Route for notice board screen
      case RouterStrings.noticeBoardScreen:
        return MaterialPageRoute(
          builder: (_) => const NoticeBoardScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Error! Route not found.'),
          ),
        );
      },
    );
  }
}
