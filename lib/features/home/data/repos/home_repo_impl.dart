import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/functions/fetch_books.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/secrets.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    return await fetchBooks(
      apiService: apiService,
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
    return await fetchBooks(
      apiService: apiService,
      endPoint: "volumes",
      queryParameters: {
        'key': booksApiKey,
        'filter': 'free-ebooks',
        'q': 'subject: Programming',
      },
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    return await fetchBooks(
      apiService: apiService,
      endPoint: "volumes",
      queryParameters: {
        'key': booksApiKey,
        'filter': 'free-ebooks',
        'q': 'subject: $category',
        'orderBy': 'relevance',
      },
    );
  }
}
