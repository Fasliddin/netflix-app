import 'package:flutter/material.dart';
import 'package:netflix/components/onboarding.dart';

bool visibility = false;
PageController pageControllera = PageController();
dynamic currentPage=0;

List<Widget> onboardscreens = [
  first(),
  second(),
  three(),
];
