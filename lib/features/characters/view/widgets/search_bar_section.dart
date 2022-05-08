import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/core/utils/debounce.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.13,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: AppColors.c500,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _SearchBar(),
            const Icon(
              Icons.menu,
              color: AppColors.white,
            ),
          ],
        ));
  }
}

class _SearchBar extends StatelessWidget {
  final Debounce _debounce = Debounce(
    const Duration(milliseconds: 400),
  );
  final controller = TextEditingController();
  _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpaces.s),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
        ),
        borderRadius: BorderRadius.circular(5),
        color: AppColors.c500,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: AppColors.white,
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              cursorColor: AppColors.white,
              style:
                  AppTextStyle.regularMedium.copyWith(color: AppColors.white),
              controller: controller,
              onChanged: (value) => _debounce.call(
                  () => context.read<CharacterCubit>().filterCharacters(value)),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 12),
                hintText: 'search'.tr(),
                hintStyle:
                    AppTextStyle.regularMedium.copyWith(color: AppColors.white),
                border: InputBorder.none,
                fillColor: AppColors.white,
                focusColor: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
