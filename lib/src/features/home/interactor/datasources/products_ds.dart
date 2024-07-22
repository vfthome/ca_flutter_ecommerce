abstract class IProductsDataSource {
  // Fetch products from API
  Future<Map> getAllProducts();

  // Fetch product by ID from API
  Future<Map> getProductById({required String id});

  // Search products by name from API
  Future<Map> searchProductsByName({required String name});

  // Paginate products from API
  Future<Map> paginateProducts({required int pageNumber});

  // Apply sort on current page
  Future<Map> sortProducts({
    required String sortBy,
    required int pageNumber,
  });

  // Get all categories list from API
  Future<Map> getAllCategories();

  // Pagination by category from API
  Future<Map> getProductsByCategory({
    required String category,
    required int pageNumber,
  });
}
