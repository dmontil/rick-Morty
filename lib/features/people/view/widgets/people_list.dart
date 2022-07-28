import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/people/view/widgets/empty_list.dart';
import 'package:ricky/features/people/view/cubit/people_cubit.dart';
import 'package:ricky/features/people/view/cubit/people_state.dart';
import 'package:ricky/features/people/view/widgets/person_card.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PeopleCubit, PeopleState>(
        bloc: context.read<PeopleCubit>()..getPeople(),
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.people.isEmpty || state.error) {
            return SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                child: const Center(child: EmptyList()));
          }
          return NotificationListener<ScrollNotification>(
              onNotification: (scrollEnd) {
                final metrics = scrollEnd.metrics;
                if (true) {
                  bool isTop = metrics.pixels == 0;
                  if (isTop) {
                    context.read<PeopleCubit>().getPeopleOfNextPage();
                  } else {
                    context.read<PeopleCubit>().getPeopleOfNextPage();
                  }
                }
                return true;
              },
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      state.people.length + (state.isLoadingMoreItems ? 1 : 0),
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return index == state.people.length
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: const Center(
                                child: CircularProgressIndicator()))
                        : PersonCard(
                            person: state.people[index],
                          );
                  }));
        });
  }
}
