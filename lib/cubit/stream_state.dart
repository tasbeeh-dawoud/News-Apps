part of 'stream_cubit.dart';

@immutable
abstract class StreamState {}

class StreamInitial extends StreamState {}
class StreamGetNumberState extends StreamState {}
class StreamGetNumberStateLoading extends StreamState {}
class StreamGetNumberStateError extends StreamState {
  final String error;
  StreamGetNumberStateError(this.error);
}
class StreamGetBitCoinSuss extends StreamState {}
class StreamGetBitCoinError extends StreamState {}

