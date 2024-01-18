import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:netflix/data.dart/colors.dart';
import 'package:netflix/data.dart/variables.dart';
import 'package:netflix/screens/signIn_screen.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        image: DecorationImage(
          image: AssetImage(
            "assets/images/movie.jpg",
          ),
          fit: BoxFit.fill,
          opacity: 0.50,
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.black.withOpacity(0.60),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                " Unlimited\n movies,TV \n shows & more",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Watch anywhere, Cancel anytime.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[100],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              DotsIndicator(
                  dotsCount: onboardscreens.length, position: currentPage),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        pageControllera.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.linear);
                        if (currentPage != 3) {
                          currentPage++;
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        }
                        ;
                      });
                    },
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: Center(
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Image.asset(
              "assets/images/wifi.png",
              fit: BoxFit.cover,
              width: size.width - 50,
              height: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Download and\n watch offline",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Always have something to watch\noffline",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[100],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                DotsIndicator(
                    dotsCount: onboardscreens.length, position: currentPage),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          pageControllera.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                          if (currentPage != 3) {
                            currentPage++;
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          }
                          ;
                        });
                      },
                      child: Center(
                        child: SizedBox(
                            width: double.infinity,
                            height: 42,
                            child: Center(
                                child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ))),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class three extends StatefulWidget {
  const three({super.key});

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Image.asset(
              "assets/images/home.png",
              fit: BoxFit.cover,
              width: size.width - 50,
              height: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "No pesky\n contracts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Join today, cancel anytime.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[100],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                DotsIndicator(
                  dotsCount: onboardscreens.length,
                  position: currentPage,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        setState(() {
                          pageControllera.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                          if (currentPage != 2) {
                            currentPage++;
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ),
                            );
                          }
                          ;
                        });
                      },
                      child: Center(
                        child: SizedBox(
                            width: double.infinity,
                            height: 42,
                            child: Center(
                                child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ))),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
