import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //const ReusableCard({Key? key}) : super(key: key); Key class serve para monitorar algo que irá mudar no estado do widget

  ReusableCard(
      {required this.colour,
      this.cardChild,
      this.onPress,
      this.selectedContainer});

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;
  bool? selectedContainer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: selectedContainer == true
                  ? Colors.transparent
                  : Colors.black26,
              blurRadius: selectedContainer == true ? 0 : 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
      ),
    );
  }
}
