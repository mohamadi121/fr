part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

final class SetTheme extends ThemeEvent {}

final class GetTheme extends ThemeEvent {}

final class ChangeTheme extends ThemeEvent {}

final class ResetTheme extends ThemeEvent {}
