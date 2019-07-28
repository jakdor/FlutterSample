import 'rx_status.dart';

class RxResponse<T> {

  final T data;
  final Exception exception;
  final RxStatus status;

  RxResponse(this.status, {this.data = null, this.exception = null});

  static RxResponse pending(){
    return RxResponse(RxStatus.PENDING);
  }

  static RxResponse success(data){
    return RxResponse(RxStatus.SUCCESS, data: data);
  }

  static RxResponse error(Exception e){
    return RxResponse(RxStatus.ERROR, exception: e);
  }
}
