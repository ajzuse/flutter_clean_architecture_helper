import 'package:clean_architecture_helper/clean_architecture_helper.dart';

class UnrecognizedCommunicationException extends DefaultException {
  UnrecognizedCommunicationException();

  factory UnrecognizedCommunicationException.fromException(Exception e) {
    return UnrecognizedCommunicationException()..exception = e;
  }

  factory UnrecognizedCommunicationException.fromError(Error e) {
    return UnrecognizedCommunicationException()..error = e;
  }

  Exception _exception;
  Error _error;

  set exception (Exception e) => _exception = e;
  set error (Error e) => _error = e;

  dynamic get e => _exception ?? _error;

  @override
  String get errorMessage => 'errors.unknown_communication_error';

  @override
  String toString() {
    return e.toString();
  }
}