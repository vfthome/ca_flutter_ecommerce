abstract class IUseCases<T> {
  Future<void> handleEvent({
    required T event,
  });
}
