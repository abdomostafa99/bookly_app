part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFaliure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFaliure(this.errMessage);
}

class FeatuerdBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const FeatuerdBooksSuccess(this.books);
}
