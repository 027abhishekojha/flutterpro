import 'package:flutter/material.dart';

class CustomCardContainer extends StatefulWidget {

  final void Function() startQuiz;
  CustomCardContainer(this.startQuiz,{super.key});



  // const  CustomCardContainer(this.startQuiz,{super.key});

  @override
  State<CustomCardContainer> createState() => _CustomCardContainerState();
}

class _CustomCardContainerState extends State<CustomCardContainer> {
  var assetNm = "assets/images/quiz-logo.png";
  // void Function()? startQuiz;
  // CustomCardContainer(this.startQuiz,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 71, 13, 151),
          Color.fromARGB(255, 107, 15, 168)
        ],
          begin: Alignment.topLeft, end: Alignment.bottomRight,
        ),
      ),
      // color: Colors.lightBlue,
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
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_right_alt,
                  // color: Colors.white
              ),
                label: const Text("Start Quiz",
                  // style: TextStyle(color: Colors.white),

                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    )),
                onPressed: widget.startQuiz,
                //     () {
                //   startQuiz();
                // },
                // child: const Text("Start Quiz")
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class CustomCardContainer extends StatefulWidget {
//
//   final void Function() startQuiz;
//   CustomCardContainer(this.startQuiz,{super.key});
//
//   @override
//   State<CustomCardContainer> createState() => _CustomCardContainerState();
// }
//
// class _CustomCardContainerState extends State<CustomCardContainer> {
//   var assetNm = "assets/images/quiz-logo.png";
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 71, 13, 151),
//           Color.fromARGB(255, 107, 15, 168)
//         ],
//           begin: Alignment.topLeft, end: Alignment.bottomRight,
//         ),
//       ),
//       // color: Colors.lightBlue,
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Ink.image(image: AssetImage("assets/images/quiz-logo.png"))
//             SizedBox(
//               // height: 60,
//                 height: 250,
//                 child: Image(
//                     image: AssetImage(
//                       assetNm,
//                     ))),
//             const SizedBox(
//               height: 50,
//             ),
//             const Text(
//               'Learn Flutter the Fun Way',
//               style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.white),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton.icon(
//               icon: Icon(Icons.arrow_right_alt),
//               label: Text("Start Quiz"),
//               style: ButtonStyle(
//                   shape: MaterialStateProperty.all(
//                       ContinuousRectangleBorder(
//                           borderRadius: BorderRadius.circular(8)
//                       )
//                   )),
//               onPressed: () {
//                 // startQuiz();
//                 widget.startQuiz();
//               },
//               // child: const Text("Start Quiz")
//             )
//           ],
//         ),
//       ),
//     );;
//   }
// }
//
