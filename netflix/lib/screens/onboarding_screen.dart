import 'package:flutter/material.dart';
import 'package:netflix/components/appbar.dart';
import 'package:netflix/components/onboarding.dart';
import 'package:netflix/data.dart/colors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset("assets/images/netflix_logo.png"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              print(size.width,);
              print(size.height,);
            },
            child: Text(
              "Privacy".toUpperCase(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Log in".toUpperCase(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          PopupMenuButton<SampleItem>(
            initialValue: selectedMenu,
            
            // Callback that sets the selected popup menu item.
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text("FAQs"),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('HELP'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: PageView(
            children: [
              first(),
              second(),
            ],
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            physics: ClampingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
