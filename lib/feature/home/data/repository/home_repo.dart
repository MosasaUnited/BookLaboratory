import 'package:bookly/feature/home/data/models/books_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
}
