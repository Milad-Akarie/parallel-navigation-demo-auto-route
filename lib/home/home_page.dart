import 'package:app/home/posts/router/posts_router.gr.dart';
import 'package:app/home/profile/router/profile_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();

  // we need to access HomePageState to switch tabs internally
  // prefer to use a provided bloc or a change notifier
  static HomePageState of(BuildContext context) {
    return context.findAncestorStateOfType<HomePageState>();
  }
}

enum HomeTab { profile, posts }

class HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void setCurrentTab(HomeTab tab) {
    setState(() {
      currentIndex = HomeTab.values.indexOf(tab);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          ExtendedNavigator(router: ProfileRouter()),
          ExtendedNavigator(router: PostsRouter()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            title: Text("Profile"),
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            title: Text("Posts"),
            icon: Icon(Icons.view_carousel),
          ),
        ],
      ),
    );
  }
}
