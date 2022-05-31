import 'package:json_annotation/json_annotation.dart';

part 'show_card_dto.g.dart';

/// Корневой элемент Json
@JsonSerializable()
class ShowCardDTO {
  @JsonKey(name: 'score')
  final double? score;

  @JsonKey(name: 'show')
  final ShowCardDataDTO? show;

  ShowCardDTO({
    this.score,
    this.show,
  });

  factory ShowCardDTO.fromJson(Map<String, dynamic> json) =>
      _$ShowCardDTOFromJson(json);
}

/// элемент show:
@JsonSerializable()
class ShowCardDataDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;

  @JsonKey(name: 'name', defaultValue: '')
  final String title;

  @JsonKey(name: 'language', defaultValue: '')
  final String? language;


  @JsonKey(name: 'image')
  final ShowCardDataImageDTO? picture;

  @JsonKey(name: 'premiered')
  final String? releaseDate;

  @JsonKey(name: 'summary')
  final String? description;

  ShowCardDataDTO({
    required this.id,
    required this.title,
    required this.picture,
    this.releaseDate,
    this.description,
    this.language
  });

  factory ShowCardDataDTO.fromJson(Map<String, dynamic> json) =>
      _$ShowCardDataDTOFromJson(json);
}

/// элемент image:
@JsonSerializable()
class ShowCardDataImageDTO {
  @JsonKey(name: 'original', defaultValue: '')
  final String? original;

  ShowCardDataImageDTO({
    this.original,
  });

  factory ShowCardDataImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ShowCardDataImageDTOFromJson(json);
}