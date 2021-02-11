import 'package:clean_architecture_helper/clean_architecture_helper.dart';

class DefaultUseCaseListener<ReturnType> {
  DefaultUseCaseListener({this.completeCallback, this.errorCallback, this.nextCallback});
  
  OnCompleteCallback completeCallback = () => null;
  OnErrorCallback errorCallback = (Exception e) => null;
  OnNextCallback<ReturnType> nextCallback = (ReturnType response) => null;
}