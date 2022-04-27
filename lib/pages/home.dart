import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showCode = false;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints.expand(),
      child: Stack(children: [
        Container(
          constraints: BoxConstraints.expand(),
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: Container(color: Colors.red)),
              Expanded(flex: 1, child: Container(color: Colors.black)),
            ],
          ),
        ),
        Container(
          constraints: BoxConstraints.expand(),
          child: Image.asset("assets/images/cord.png", fit: BoxFit.cover),
        ),
        Stack(
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
              child: !_showCode ? joinOrHost() : gameCode(),
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
      ]),
    );
  }

  Row joinOrHost() {
    return Row(
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
              child: TextButton(
                child: Text(
                  "Join",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _showCode = true;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Host",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Row gameCode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: null,
          child: SizedBox(
            width: 200.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Game Code",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
