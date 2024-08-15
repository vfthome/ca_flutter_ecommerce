abstract class IUseCases<T, Params> {
  Future<T> call({required Params params});
}
