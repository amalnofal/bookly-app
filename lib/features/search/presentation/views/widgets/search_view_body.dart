import 'package:bookly_app/core/widgets/custom_circle_button.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                CustomCircleButton(
                  icon: Icons.arrow_back,
                  onPressed: () => GoRouter.of(context).pop(),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: CustomSearchTextField(
                    onSearch: (value) =>
                        context.read<SearchCubit>().search(value),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
