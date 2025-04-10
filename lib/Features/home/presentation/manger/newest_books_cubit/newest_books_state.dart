part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class FeatuerdBooksInitial extends NewestBooksState {}

class FeatuerdBooksLoading extends NewestBooksState {}

class FeatuerdBooksFaliure extends NewestBooksState {
  final String errMessage;

  const FeatuerdBooksFaliure(this.errMessage);
}

class FeatuerdBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const FeatuerdBooksSuccess(this.books);
}
