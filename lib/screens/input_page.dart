import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi/calculator_brain.dart';
import 'package:my_bmi/components/reusable_card.dart';
import 'package:my_bmi/screens/result_page.dart';

import 'file:///D:/FlutterCodes/udemy/projects/my_bmi/my_bmi/lib/components/round_icon_button.dart';

import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Gender selectedGender;
//  int height = 180;
//  int weight = 60;
//  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: ScrollItems(),
//      Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
//          Expanded(
//            child: Row(
//              children: <Widget>[
//                Expanded(
//                  child: ReusableCard(
//                    onPress: () {
//                      setState(() {
//                        selectedGender = Gender.male;
//                      });
//                    },
//                    colour: selectedGender == Gender.male
//                        ? kActiveCardColour
//                        : kInactiveCardColour,
//                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
//                  ),
//                ),
//                Expanded(
//                  child: ReusableCard(
//                    onPress: () {
//                      setState(() {
//                        selectedGender = Gender.female;
//                      });
//                    },
//                    colour: selectedGender == Gender.female
//                        ? kActiveCardColour
//                        : kInactiveCardColour,
//                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
//                  ),
//                ),
//              ],
//            ),
//          ),
//          Expanded(
//            child: ReusableCard(
//              colour: kActiveCardColour,
//              cardChild: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    'HEITH',
//                    style: kLabelTextStyle,
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    crossAxisAlignment: CrossAxisAlignment.baseline,
//                    textBaseline: TextBaseline.alphabetic,
//                    children: <Widget>[
//                      Text(
//                        height.toString(),
//                        style: kNumberTextStyle,
//                      ),
//                      Text(
//                        'cm',
//                        style: kLabelTextStyle,
//                      ),
//                    ],
//                  ),
//                  SliderTheme(
//                    data: SliderTheme.of(context).copyWith(
//                      inactiveTrackColor: Color(0xff8d8e98),
//                      thumbColor: Color(0xFFeb1555),
//                      activeTrackColor: Colors.white,
//                      overlayColor: Color(0x29eb1555),
//                      thumbShape:
//                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
//                      overlayShape:
//                          RoundSliderOverlayShape(overlayRadius: 30.0),
//                    ),
//                    child: Slider(
//                      value: height.toDouble(),
//                      min: 120.0,
//                      max: 220.0,
//                      onChanged: (double newValue) {
//                        setState(() {
//                          height = newValue.round();
//                        });
//                      },
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//          Expanded(
//            child: Row(
//              children: <Widget>[
//                Expanded(
//                  child: ReusableCard(
//                    colour: kActiveCardColour,
//                    cardChild: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Text(
//                          'WEIGHT',
//                          style: kLabelTextStyle,
//                        ),
//                        Text(
//                          weight.toString(),
//                          style: kNumberTextStyle,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            RoundIconButton(
//                              icon: FontAwesomeIcons.minus,
//                              onPressed: () {
//                                setState(() {
//                                  weight--;
//                                });
//                              },
//                            ),
//                            SizedBox(
//                              width: 10.0,
//                            ),
//                            RoundIconButton(
//                              icon: FontAwesomeIcons.plus,
//                              onPressed: () {
//                                setState(() {
//                                  weight++;
//                                });
//                              },
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: ReusableCard(
//                    colour: kActiveCardColour,
//                    cardChild: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Text(
//                          'AGE',
//                          style: kLabelTextStyle,
//                        ),
//                        Text(
//                          age.toString(),
//                          style: kNumberTextStyle,
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            RoundIconButton(
//                              icon: FontAwesomeIcons.minus,
//                              onPressed: () {
//                                setState(() {
//                                  age--;
//                                });
//                              },
//                            ),
//                            SizedBox(
//                              width: 10.0,
//                            ),
//                            RoundIconButton(
//                              icon: FontAwesomeIcons.plus,
//                              onPressed: () {
//                                setState(() {
//                                  age++;
//                                });
//                              },
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//          BottomButton(
//            buttonTitle: 'CALCULATE',
//            onTap: () {
//              CalculatorBrain calc =
//                  CalculatorBrain(height: height, weight: weight);
//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => ResultPage(
//                    bmiResult: calc.calculateBMI(),
//                    resultText: calc.getResult(),
//                    interpretation: calc.getInterpretation(),
//                  ),
//                ),
//              );
//            },
//          ),
//        ],
//      ),
    );
  }
}

class ScrollItems extends StatefulWidget {
  @override
  _ScrollItemsState createState() => _ScrollItemsState();
}

class _ScrollItemsState extends State<ScrollItems> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEITH',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8d8e98),
                        thumbColor: Color(0xFFeb1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
