import 'package:flutter/material.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment:
          //         MainAxisAlignment.spaceAround,
          //     children: [
          //       Column(
          //         children: [
          //           Image.asset(
          //             "images/512_512.png",
          //             height: 20,
          //           ),
          //           "Umar Azizov"
          //               .text
          //               .white
          //               .size(14)
          //               .make(),
          //         ],
          //       ),
          //       Column(
          //         children: [
          //           Image.asset(
          //             "images/Cover.png",
          //             height: 20,
          //             width: 20,
          //           ),
          //           "Onlaine Groceries"
          //               .text
          //               .white
          //               .size(14)
          //               .make(),
          //         ],
          //       ),
          //       Column(
          //         children: [
          //           Image.asset(
          //             "images/Icon.png",
          //             height: 20,
          //           ),
          //           Text("To Do Title")
          //         ],
          //       ),
          //       Image.asset(
          //         "images/confirm-icon.png",
          //         height: 20,
          //       ),
          //     ],
          //   ),
          // ),
    
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.asset(
                    "images/Frame 1261154913 (1).png",
                    height: 250,
                  ),
                ),
                Image.asset(
                  "images/photo_2024-07-18_13-52-43.jpg",
                  height: 250,
                ),
                Image.asset(
                  "images/photo_2024-07-18_14-00-32.jpg",
                  height: 250,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/photo_2024-07-18_14-01-56.jpg",
                  height: 200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
