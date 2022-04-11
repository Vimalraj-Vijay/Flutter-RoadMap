


import 'package:flutter/material.dart';

class GlobalContext {
  static dynamic context = null;

  static void setContext(BuildContext buildContext){
    context ??= buildContext;
  }

  static BuildContext getContext() {
    return context;
  }

}