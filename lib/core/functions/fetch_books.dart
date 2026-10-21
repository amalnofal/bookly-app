import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Future<Either<Failure, List<BookModel>>> fetchBooks({
  required ApiService apiService,
  required String endPoint,
  required Map<String, dynamic> queryParameters,
}) async {
  try {
    final data = await apiService.get(
      endPoint: endPoint,
      queryParameters: queryParameters,
    );

    final List<BookModel> books = [];

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