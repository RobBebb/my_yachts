import 'package:freezed_annotation/freezed_annotation.dart';
import 'yacht.dart';

part 'yacht_state.freezed.dart';

@Freezed()
class YachtState with _$YachtState {
  const factory YachtState({
    List<Yacht>? yachts,
  }) = _YachtState;

  factory YachtState.initial() => const YachtState();
}
