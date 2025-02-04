import 'package:flutter/material.dart';

import '../dependency/dependency.dart';

class MyAppScope extends StatefulWidget {
  const MyAppScope({
    super.key,
    required this.child,
    required this.dependency,
  });

  final Widget child;
  final AppDependency dependency;

  @override
  State<MyAppScope> createState() => MyAppScopeState();
}

class MyAppScopeState extends State<MyAppScope> {
  late final AppDependency dependency;

  @override
  void initState() {
    super.initState();
    dependency = widget.dependency;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
