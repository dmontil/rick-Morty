import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/people/domain/repositories/people_repository.dart';
import 'package:ricky/features/people/view/cubit/people_state.dart';

class PeopleCubit extends Cubit<PeopleState> {
  final PeopleRepository _peopleRepository;

  PeopleCubit({
    required PeopleRepository peopleRepository,
  })  : _peopleRepository = peopleRepository,
        super(
          const PeopleState(
              isLoading: true,
              isLoadingMoreItems: false,
              hasLoadedAllItems: false,
              people: [],
              error: false),
        );

  Future<void> getPeople() async {
    emit(state.copyWith(isLoading: true));
    try {
      final people = await _peopleRepository.getPeople();
      emit(state.copyWith(people: people, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: true, isLoading: false));
    }
  }

  Future<void> getPeopleOfNextPage() async {
    try {
      if (state.hasLoadedAllItems) return;
      emit(state.copyWith(isLoadingMoreItems: true));
      final people = await _peopleRepository.getPeopleOfNextPage();
      emit(state.copyWith(
          people: [...state.people, ...people],
          isLoadingMoreItems: false,
          hasLoadedAllItems: people.isEmpty));
    } catch (e) {
      emit(state.copyWith(error: true, isLoading: false));
    }
  }
}
