abstract class DefaultState<T>
{
  const DefaultState();
}

class InitialState<T> extends DefaultState<T>
{
  const InitialState();
}

class LoadingState<T> extends DefaultState<T>
{
  const LoadingState();
}

class SuccessState<T> extends DefaultState<T>
{
  const SuccessState(this.data);
  final T data;
}

class FailureState<T> extends DefaultState<T>
{
  const FailureState(this.errorMessage);
  final String errorMessage;
}
