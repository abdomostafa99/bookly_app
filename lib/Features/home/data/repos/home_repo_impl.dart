import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/faliures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Faliures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=Free-ebooks&Sorting=newest&q=subject:Programming');

      List<BookModel> booksList = [];
      for (var item in data['items']) {
        booksList.add(BookModel.fromJson(item));
      }

      return right(booksList);
    } catch (e) {
      return left(ServerFaliure());
    }
  }

  @override
  Future<Either<Faliures, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
