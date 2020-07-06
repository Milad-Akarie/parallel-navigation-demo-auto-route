import 'package:app/root_router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator(router: Router()),
    );
  }
}
