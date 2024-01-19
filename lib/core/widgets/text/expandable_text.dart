import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/theming/app_theme.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    super.key,
    this.initialExpanded = false,
    required this.title,
  });

  final bool initialExpanded;
  final String title;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  @override
  void initState() {
    super.initState();
    expanded = widget.initialExpanded;
  }

  late bool expanded;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: GestureDetector(
        onTap: () {
          expanded = !expanded;
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(widget.title,
              style: AppTheme.s15w600.copyWith(color: AppColors.white),
              maxLines: expanded ? 5 : 1,
              overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}
