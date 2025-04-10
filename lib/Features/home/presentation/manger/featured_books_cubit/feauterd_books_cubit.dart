import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feauterd_books_state.dart';

class FeauterdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeauterdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatuerdBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) => emit(FeatuerdBooksFaliure(failure.errMessage)),
        (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }
}
