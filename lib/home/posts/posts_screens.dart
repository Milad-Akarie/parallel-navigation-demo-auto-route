import 'package:app/home/home_page.dart';
import 'package:app/home/posts/router/posts_router.gr.dart';
import 'package:app/home/profile/router/profile_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Posts List")),
        Container(
          child: RaisedButton(
            child: Text("Navigate to post-details"),
            onPressed: () {
              ExtendedNavigator.of(context).pushNamed(PostsRoutes.postDetails);
            },
          ),
        ),
      ],
    );
  }
}

class PostDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade300,
      appBar: AppBar(
        title: Text("Post Details"),
        backgroundColor: Colors.lightGreen.shade600,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Navigate To home.profile/details"),
          onPressed: () {
            ExtendedNavigator.ofRouter<ProfileRouter>().pushNamed(ProfileRoutes.profileDetails);
            // we also need to switch to the right tab
            HomePage.of(context).setCurrentTab(HomeTab.profile);
          },
        ),
      ),
    );
  }
}
