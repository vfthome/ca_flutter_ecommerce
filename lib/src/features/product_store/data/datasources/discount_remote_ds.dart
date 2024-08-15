import '../../interactor/datasources/i_discount_remote_ds.dart';

class DiscountRemoteDataSource implements IDiscountRemoteDataSource {
  @override
  Future<double> getDiscount({String productId = ''}) {
    return Future.value(0.2);
  }
}
