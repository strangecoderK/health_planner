import 'package:flutter/material.dart';
import 'package:health_planner/ui/color_styles.dart';
import 'package:health_planner/ui/text_styles.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const SmallButton({super.key, required this.text, required this.onPressed});

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
        widget.onPressed();
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyles.smallerTextBold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
