part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

/// Home stickers states

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<TotalStickers> totalStickers;
  const HomeLoaded({required this.totalStickers});
}

final class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}

class HomeAdditionalStickersLoaded extends HomeState {}

class HomeAdditionStickersError extends HomeState {}

@immutable
abstract class BannerState extends Equatable {
  const BannerState();

  @override
  List<Object?> get props => [];
}

final class BannerInitial extends BannerState {}

/// Banner reloaded states
final class BannerLoaded extends BannerState {
  final BannerModel bannerData;
  const BannerLoaded({required this.bannerData});
}

final class BannerError extends BannerState {
  final String? message;
  const BannerError(this.message);
}

@immutable
abstract class KeywordsState extends Equatable {
  const KeywordsState();

  @override
  List<Object?> get props => [];
}

final class KeywordsInitial extends KeywordsState {}

/// Keywords reloaded states
final class KeywordsLoaded extends KeywordsState {
  final List<String> keywords;
  const KeywordsLoaded({required this.keywords});
}

final class KeywordsError extends KeywordsState {
  final String? message;
  const KeywordsError(this.message);
}
