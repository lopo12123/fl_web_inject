import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:bad_fl/bad_fl.dart';
import 'package:flutter/material.dart';

part 'controller.dart';

part 'view.dart';

@JS('flWebController')
external set flWebController(JSObject value);

/// expose the controller to JS side
void doInjection() {
  flWebController = createJSInteropWrapper(phantomViewController);
}
