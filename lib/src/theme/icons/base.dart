import 'package:flutter/widgets.dart';

abstract class ShadIcons {
  const ShadIcons();

  Widget up({double? size, Color? color});
  Widget down({double? size, Color? color});
  Widget left({double? size, Color? color});
  Widget right({double? size, Color? color});
  Widget ellipsis({double? size, Color? color});
  Widget check({double? size, Color? color});
  Widget calendar({double? size, Color? color});
  Widget close({double? size, Color? color});
  Widget gripVertical({double? size, Color? color});
  Widget gripHorizontal({double? size, Color? color});
  Widget search({double? size, Color? color});
}
