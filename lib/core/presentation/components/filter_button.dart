import 'package:flutter/material.dart';
import 'package:health_planner/ui/color_styles.dart';
import 'package:health_planner/ui/text_styles.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const FilterButton({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: TextStyles.smallTextRegular.copyWith(
          color: isSelected ? Colors.white : ColorStyles.primary80,
        ),
      ),
      backgroundColor: isSelected ? ColorStyles.primary100 : Colors.white,
      side: BorderSide(color: ColorStyles.primary100),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
