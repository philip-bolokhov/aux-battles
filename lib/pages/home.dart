import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cord.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: screenHeight * 0.5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aux",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.2,
            bottom: screenHeight * 0.2,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Battles",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.64,
            bottom: screenHeight * 0.26,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  color: Colors.black.withOpacity(0.60),
                  selectedColor: Color(0xFF6200EE),
                  selectedBorderColor: Color(0xFF6200EE),
                  fillColor: Color(0xFF6200EE).withOpacity(0.08),
                  splashColor: Color(0xFF6200EE).withOpacity(0.12),
                  hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                  borderRadius: BorderRadius.circular(4.0),
                  constraints: BoxConstraints(minHeight: 36.0),
                  isSelected: <bool>[false, false],
                  onPressed: (index) {
                    // Respond to button selection
                  },
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Join",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Host",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.7,
            bottom: screenHeight * 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Random",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
