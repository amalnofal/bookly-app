import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/functions/fetch_books.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/secrets.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({
    required String query,
  }) async {
    return await fetchBooks(
      apiService: apiService,
      endPoint: "volumes",
      queryParameters: {
        'key': booksApiKey,
        'q': query,
        'maxResults': 20,
      },
    );
  }
}