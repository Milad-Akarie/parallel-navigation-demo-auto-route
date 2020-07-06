import 'package:app/home/profile/router/profile_router.gr.dart';
import 'package:app/root_router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Profile Home"),
        ),
        Container(
          child: RaisedButton(
            child: Text("navigate to Profile details"),
            onPressed: () {
              ExtendedNavigator.of(context).pushNamed(ProfileRoutes.profileDetails);
            },
          ),
        ),
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        title: Text("Profile Details"),
        backgroundColor: Colors.amber.shade600,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("navigate to root/settings"),
          onPressed: () {
            ExtendedNavigator.root.pushNamed(Routes.settingsPage);
            // or with context
            // ExtendedNavigator.of(context,rootNavigator: true).pushNamed(...)
          },
        ),
      ),
    );
  }
}
