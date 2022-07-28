import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/core/widgets/footer.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';
import 'package:ricky/features/characters/view/widgets/characters_list.dart';
import 'package:ricky/features/characters/view/widgets/favorite_icon.dart';
import 'package:ricky/features/characters/view/widgets/header.dart';
import 'package:ricky/features/characters/view/widgets/search_bar_section.dart';
import 'package:ricky/features/people/view/cubit/people_cubit.dart';
import 'package:ricky/features/people/view/widgets/people_list.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<ScrollEndNotification>(
          onNotification: (notification) {
            if (notification.metrics.atEdge &&
                notification.metrics.pixels != 0) {
              context.read<PeopleCubit>().getPeopleOfNextPage();
            }
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: const Header()),
                const SearchBarSection(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpaces.m),
                  child: Wrap(
                    children: const [
                      PeopleList(),
                    ],
                  ),
                ),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
