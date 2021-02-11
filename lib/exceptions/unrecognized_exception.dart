import 'package:clean_architecture_helper/clean_architecture_helper.dart';

class UnrecognizedException extends DefaultException {
  UnrecognizedException(this.e);

  Exception e;
  @override
  String get errorMessage => 'errors.unknow_error';
}