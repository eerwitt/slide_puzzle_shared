// ignore_for_file: public_member_api_docs

part of 'puzzle_bloc.dart';

abstract class PuzzleEvent extends Equatable {
  const PuzzleEvent();

  @override
  List<Object> get props => [];
}

/// Initialize or reset a puzzle.
class PuzzleSetup extends PuzzleEvent {
  const PuzzleSetup(
      {required this.shufflePuzzle,
      required this.randomSeed,
      required this.size});

  final bool shufflePuzzle;
  final int randomSeed;
  final int size;

  @override
  List<Object> get props => [shufflePuzzle, randomSeed, size];

  factory PuzzleSetup.fromJson(Map<String, dynamic> json) => PuzzleSetup(
        shufflePuzzle: json["shufflePuzzle"],
        randomSeed: json["randomSeed"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "shufflePuzzle": shufflePuzzle,
        "randomSeed": randomSeed,
        "size": size,
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
