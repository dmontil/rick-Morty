import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ricky/features/people/domain/models/people/person.dart';

part 'people_state.freezed.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState({
    required List<Person> people,
    required bool isLoading,
    required bool isLoadingMoreItems,
    required bool error,
    required bool hasLoadedAllItems,
  }) = _PeopleState;
}
