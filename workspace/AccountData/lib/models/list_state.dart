

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.freezed.dart';
@freezed
abstract class ListState with _$ListState {
  const factory ListState.data(
      List activty, bool hasReachedMax,int noOfPaages) = _Data;
  const factory ListState.dataLoading(List activty) =
  _DataLoading;
  const factory ListState.error(String error) = _Error;
}