import 'package:bookly_app/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_lsitview.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFaliure) {
          return CustomErorrWidget(errMessage: state.errMessage);
        } else {
          return Center(child: const CustomLoadingIndicator());
        }
      },
    );
  }
}







      //  SliverList(
      //         delegate:
      //             SliverChildBuilderDelegate(childCount: 10, (context, index) {
      //       return const Padding(
      //         padding:  EdgeInsets.only(bottom: 16, left: 16),
      //         child: BookListViewItem(),
      //       );
      //     }));