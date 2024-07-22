abstract class IError extends Error {
  String get title;
  String get message;
  Type get type;
}
