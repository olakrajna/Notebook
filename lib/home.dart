import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
   return Material(
      child: Container(
        color: Color(0xFFF3F3F3),
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 200, horizontal:32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      height: 1.2,
                      fontWeight: FontWeight.bold
                  ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("Welcome to your own Notebook.",
                ),],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
                    Text(
                      "Write down important things and your thoughts here.",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 80,),
                    Expanded(
                      child: Transform.scale(
                        scale: 1.5, // Wartość skali, np. 1.5 oznacza powiększenie 1.5-krotnie
                        child: RiveAnimation.asset('assets/3264-6879-tree-loading-bar.riv'),
                      ),
                    ),
                    ElevatedButton(onPressed: () {},
                        child: Text('Start', style: TextStyle(
                          fontSize: 20,
                        )),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(327,50),
                        primary: Color.fromRGBO(116, 226, 0, 1.0),
                        elevation: 0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))
                      )

                    ),
                  ],

          )

        )
    )
      );
  }
}
