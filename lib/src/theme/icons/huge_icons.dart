import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shadcn_ui/src/theme/icons/base.dart';

class ShadHugeIcons extends ShadIcons {
  const ShadHugeIcons();

  @override
  Widget up({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedArrowUp01,
    size: size,
    color: color,
  );

  @override
  Widget down({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedArrowDown01,
    size: size,
    color: color,
  );

  @override
  Widget left({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedArrowLeft01,
    size: size,
    color: color,
  );

  @override
  Widget right({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedArrowRight01,
    size: size,
    color: color,
  );

  @override
  Widget ellipsis({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedMoreHorizontal,
    size: size,
    color: color,
  );

  @override
  Widget check({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedTick02,
    size: size,
    color: color,
  );

  @override
  Widget calendar({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedCalendar04,
    size: size,
    color: color,
  );

  @override
  Widget close({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedCancel01,
    size: size,
    color: color,
  );

  @override
  Widget gripVertical({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedDragDropVertical,
    size: size,
    color: color,
  );

  @override
  Widget gripHorizontal({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedDragDropHorizontal,
    size: size,
    color: color,
  );

  @override
  Widget search({double? size, Color? color}) => HugeIcon(
    icon: HugeIcons.strokeRoundedSearch01,
    size: size,
    color: color,
  );
}
