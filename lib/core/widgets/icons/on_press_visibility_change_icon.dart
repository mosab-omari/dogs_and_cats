import 'package:flutter/material.dart';

class OnPressVisibilityChangeIcon extends StatefulWidget {
  const OnPressVisibilityChangeIcon({
    super.key,
    required this.onChanged,
    this.initialVisibility = true,
  });
  final void Function(bool) onChanged;
  final bool initialVisibility;

  @override
  State<OnPressVisibilityChangeIcon> createState() =>
      _OnPressVisibilityChangeIconState();
}

class _OnPressVisibilityChangeIconState
    extends State<OnPressVisibilityChangeIcon> {
  @override
  void initState() {
    super.initState();
    visibility = widget.initialVisibility;
  }

  late bool visibility;
  Icon visibilityIcon = const Icon(Icons.visibility_outlined);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (visibility) {
            visibility = false;
            visibilityIcon = const Icon(Icons.visibility_off_outlined);
          } else {
            visibility = true;
            visibilityIcon = const Icon(Icons.visibility_outlined);
          }
          widget.onChanged(visibility);
        });
      },
      child: visibilityIcon,
    );
  }
}
