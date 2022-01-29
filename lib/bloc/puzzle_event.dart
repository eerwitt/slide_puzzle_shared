// ignore_for_file: public_member_api_docs

part of 'puzzle_bloc.dart';

abstract class PuzzleEvent extends Equatable {
  const PuzzleEvent();

  @override
  List<Object> get props => [];
}

class PuzzleInitialized extends PuzzleEvent {
  const PuzzleInitialized(
      {required this.shufflePuzzle, required this.randomSeed});

  final bool shufflePuzzle;
  final int randomSeed;

  @override
  List<Object> get props => [shufflePuzzle, randomSeed];

  factory PuzzleInitialized.fromJson(Map<String, dynamic> json) =>
      PuzzleInitialized(
        shufflePuzzle: json["shufflePuzzle"],
        randomSeed: json["randomSeed"],
      );

  Map<String, dynamic> toJson() => {
        "shufflePuzzle": shufflePuzzle,
        "randomSeed": randomSeed,
      };
}

class TileTapped extends PuzzleEvent {
  const TileTapped(this.tile);

  final Tile tile;

  @override
  List<Object> get props => [tile];

  factory TileTapped.fromJson(Map<String, dynamic> json) =>
      TileTapped(Tile.fromJson(json["tile"]));

  Map<String, dynamic> toJson() => {
        "tile": tile.toJson(),
      };
}

class PuzzleReset extends PuzzleEvent {
  const PuzzleReset();
}
