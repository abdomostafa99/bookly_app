part of 'feauterd_books_cubit.dart';

sealed class FeatuerdBooksState extends Equatable {
  const FeatuerdBooksState();

  @override
  List<Object> get props => [];
}

class FeatuerdBooksInitial extends FeatuerdBooksState {}

class FeatuerdBooksLoading extends FeatuerdBooksState {}

class FeatuerdBooksFaliure extends FeatuerdBooksState {
  final String errMessage;

  const FeatuerdBooksFaliure(this.errMessage);
}

class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookModel> books;

  const FeatuerdBooksSuccess(this.books);
}
