import 'package:clean_architecture_helper/clean_architecture_helper.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

typedef OnCompleteCallback = Function();
typedef OnErrorCallback = Function(Exception e);
typedef OnNextCallback<T> = Function(T data);

class DefaultObserver<_T> extends Observer<_T> {
  DefaultObserver({ this.listener });

  DefaultUseCaseListener<_T> listener;

  @override
  void onComplete() {
    if (listener.completeCallback != null) {
      listener.completeCallback();
    }
  }

  @override
  void onError(dynamic e) {
    if (listener.errorCallback != null) {
      if (e is Exception) {
        listener.errorCallback(e);
      } else {
        onError(UnrecognizedException(e as Exception));
      }
    }
  }

  @override
  void onNext(_T response) {
    if (listener.nextCallback != null) {
      listener.nextCallback(response);
    }
  }
}