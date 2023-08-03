import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Answer3 extends StatefulWidget {
  const Answer3({Key? key}) : super(key: key);

  @override
  State<Answer3> createState() => _Answer3State();
}

class _Answer3State extends State<Answer3> {
  String selectedImage = ''; // Track the selected image

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double availableWidth = constraints.maxWidth;
        double availableHeight = constraints.maxHeight;

        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Image 1
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = 'tom';
                      });
                    },
                    child: Image.asset(
                      'assets/images/tom.png', // Replace with your image asset path
                      width: 150,
                      height: 200,
                      color: selectedImage == 'tom' ? Colors.red : null,
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = 'arnold';
                    });
                  },
                  child: Image.asset(
                    'assets/images/arnold.png', // Replace with your image asset path
                    width: 150,
                    height: 200,
                    color: selectedImage == 'arnold' ? Colors.red : null,
                  ),
                ),

                // Image 3
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = 'michael';
                      });
                    },
                    child: Image.asset(
                      'assets/images/michael.png', // Replace with your image asset path
                      width: 150,
                      height: 200,
                      color: selectedImage == 'michael' ? Colors.red : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
