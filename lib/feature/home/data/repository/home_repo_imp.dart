import 'dart:math';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/models/books_model.dart';
import 'package:bookly/feature/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest',
      );

      List<BooksModel> books = [];

      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
    }
    return left(
      ServerFailure(
        e.toString(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks

    throw UnimplementedError();
  }
}
