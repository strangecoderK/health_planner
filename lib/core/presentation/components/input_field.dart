import 'package:flutter/material.dart';
import 'package:health_planner/ui/color_styles.dart';
import 'package:health_planner/ui/text_styles.dart';

class InputField extends StatelessWidget {
  final String label;
  final String placeHolder;
  final TextEditingController? textEditingController;

  const InputField({
    super.key,
    required this.label,
    required this.placeHolder,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.smallTextRegular,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: ColorStyles.gray4, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: ColorStyles.primary80, width: 1.5),
            ),
            hintText: placeHolder,
            hintStyle: TextStyles.smallerTextRegular
                .copyWith(color: ColorStyles.gray4),
          ),
        ),
      ],
    );
  }
}
