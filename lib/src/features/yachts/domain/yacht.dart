import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/data.dart';

part 'yacht.freezed.dart';

@Freezed()
class Yacht extends DataModel with _$Yacht {
  const factory Yacht({
    String? id,
    required String name,
  }) = _Yacht;
}
