import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:shadcn_ui/src/theme/icons/base.dart';

class ShadLucideIcons extends ShadIcons {
  const ShadLucideIcons();

  @override
  Widget up({double? size, Color? color}) =>
      Icon(LucideIcons.chevronUp, size: size, color: color);

  @override
  Widget down({double? size, Color? color}) =>
      Icon(LucideIcons.chevronDown, size: size, color: color);

  @override
  Widget left({double? size, Color? color}) =>
      Icon(LucideIcons.chevronLeft, size: size, color: color);

  @override
  Widget right({double? size, Color? color}) =>
      Icon(LucideIcons.chevronRight, size: size, color: color);

  @override
  Widget ellipsis({double? size, Color? color}) =>
      Icon(LucideIcons.ellipsis, size: size, color: color);

  @override
  Widget check({double? size, Color? color}) =>
      Icon(LucideIcons.check, size: size, color: color);

  @override
  Widget calendar({double? size, Color? color}) =>
      Icon(LucideIcons.calendar, size: size, color: color);

  @override
  Widget close({double? size, Color? color}) =>
      Icon(LucideIcons.x, size: size, color: color);

  @override
  Widget gripVertical({double? size, Color? color}) =>
      Icon(LucideIcons.gripVertical, size: size, color: color);

  @override
  Widget gripHorizontal({double? size, Color? color}) =>
      Icon(LucideIcons.gripHorizontal, size: size, color: color);

  @override
  Widget search({double? size, Color? color}) =>
      Icon(LucideIcons.search, size: size, color: color);
}
