part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialFetchEvent extends HomeEvent {}

@immutable
sealed class BannerEvent {}

class HomeBannerFetchEvent extends BannerEvent {}

@immutable
sealed class KeywordsEvent {}

class KeywordsFetchEvent extends KeywordsEvent {}
