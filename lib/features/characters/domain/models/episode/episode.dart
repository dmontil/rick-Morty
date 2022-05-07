

import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.g.dart';
part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  @JsonSerializable(explicitToJson: true)
  const factory Episode({
    required int id,
    required String name,
    @JsonKey(name: 'air_date') required String airDate,
    required String episode,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}