import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/secrets.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    return await _fetchBooks(
      endPoint: "volumes",
      queryParameters: {
        'key': booksApiKey,
        'filter': 'free-ebooks',
        'q': 'subject: Programming',
        'orderBy': 'newest',
      },
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    return await _fetchBooks(
      endPoint: "volumes",
      queryParameters: {
        'key': booksApiKey,
        'filter': 'free-ebooks',
        'q': 'subject: Programming',
      },
    );
  }

  // Helper method
  Future<Either<Failure, List<BookModel>>> _fetchBooks({
    required String endPoint,
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: endPoint,
        queryParameters: queryParameters,
      );

      List<BookModel> books = [];

      for (var item in data['items'] ?? []) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
