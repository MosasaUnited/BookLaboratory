import 'package:bloc/bloc.dart';
import 'package:equatable/equatableta.dart';

import '../../data/models/books_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
