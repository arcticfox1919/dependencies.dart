part of 'package:dependencies/dependencies.dart';

abstract class OverrideMixin {

  bool allowOverrides = false;

  void enableOverriding() {
    allowOverrides = true;
  }

  bool shouldOverride(bool override) {
    return override == null ? allowOverrides : allowOverrides || override;
  }

}
