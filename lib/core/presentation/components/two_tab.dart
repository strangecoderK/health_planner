import 'package:flutter/material.dart';
import 'package:health_planner/ui/color_styles.dart';
import 'package:health_planner/ui/text_styles.dart';

class TwoTab extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final TabController tabController;

  const TwoTab({
    super.key,
    required this.labels,
    required this.selectedIndex,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs:
          labels.map((e) => Text(e, style: TextStyles.smallTextBold)).toList(),
      controller: tabController,
      indicatorColor: ColorStyles.gray2,
      indicatorSize: TabBarIndicatorSize.tab,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      labelColor: ColorStyles.primary100,
      unselectedLabelColor: ColorStyles.gray2,
      labelPadding: EdgeInsets.only(bottom: 10),
    );
  }
}
