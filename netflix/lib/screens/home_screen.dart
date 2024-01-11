import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:netflix/data.dart/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.transparent,
                  width: size.width,
                  height: size.height - size.width + 150,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 300),
                    child: Container(
                      width: size.width,
                      height: size.height - size.width - 150,
                      decoration: BoxDecoration(
                        color: backgroundColor.withOpacity(0.50),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200, 20),
                          bottomRight: Radius.elliptical(200, 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: FlutterCarousel(
                  items: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/bird-advocate-200x100.webp",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200.0,
                    viewportFraction: 0.50,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    physics: BouncingScrollPhysics(),
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.linear,
                    enlargeCenterPage: true,
                    controller: CarouselController(),
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    pauseAutoPlayOnTouch: true,
                    pauseAutoPlayOnManualNavigate: true,
                    pauseAutoPlayInFiniteScroll: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    disableCenter: false,
                    showIndicator: false,
                    floatingIndicator: true,
                    slideIndicator: CircularSlideIndicator(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
