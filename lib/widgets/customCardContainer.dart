import 'package:flutter/material.dart';

class CustomCardContainer extends StatefulWidget {
  const CustomCardContainer({super.key});

  @override
  State<CustomCardContainer> createState() => _customCardContainerState();
}

class _customCardContainerState extends State<CustomCardContainer> {
  var assetNm = "assets/images/quiz-logo.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ink.image(image: AssetImage("assets/images/quiz-logo.png"))
            SizedBox(
              // height: 60,
                height: 250,
                child: Image(
                    image: AssetImage(
                      assetNm,
                    ))),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn Flutter the Fun Way',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    )),
                onPressed: () {},
                child: const Text("Start Quiz"))
          ],
        ),
      ),
    );;
  }
}
