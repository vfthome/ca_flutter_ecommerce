abstract class IDiscountRemoteDataSource {
  /// Gets the discount percentage from 0 to 1 for a given product.
  Future<double> getDiscount({String productId});
}
