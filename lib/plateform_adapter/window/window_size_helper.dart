import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

class WindowSizeHelper {
  static Future<void> setFixSize({Size size = const Size(600, 960)}) async {
    bool isDesk = Platform.isMacOS || Platform.isWindows || Platform.isLinux;
    if (isDesk) {
      await DesktopWindow.setWindowSize(size);
      await DesktopWindow.setMinWindowSize(size);
      await DesktopWindow.setMaxWindowSize(size);
    }
  }
}
