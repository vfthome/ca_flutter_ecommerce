import 'package:asp/asp.dart';

class TemplateStateEntity {
  // atomic state
  final Atom<bool> isLoading;

  TemplateStateEntity({
    required this.isLoading,
  });

  // default initial state constructor
  TemplateStateEntity.initial() : this(isLoading: atom(false));
}
