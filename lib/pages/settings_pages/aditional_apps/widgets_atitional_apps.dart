import 'package:angry_coach_beta/pages/settings_pages/aditional_apps/constants_aditional_apps.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {required this.icone, required this.onPress, required this.onLongPres});

  final IconData icone;
  Function()? onPress;
  Function()? onLongPres;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onLongPress: onLongPres,
      child: Icon(
        icone,
        color: const Color.fromARGB(255, 173, 173, 173),
      ),
      onPressed: onPress,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 11, 17, 39),
    );
  }
}

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  BottomButton({Key? key, required this.onTap, required this.buttonTitle})
      : super(key: key);
  Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class ReusableCards extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  // ignore: use_key_in_widget_constructors
  const ReusableCards({required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
