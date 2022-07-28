// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      url: json['url'] as String?,
      name: json['name'] as String?,
      height: json['height'] as String?,
      mass: json['mass'] as String?,
      hair_color: json['hair_color'] as String?,
      eye_color: json['eye_color'] as String?,
      skin_color: json['skin_color'] as String?,
      gender: json['gender'] as String?,
      birth_year: json['birth_year'] as String?,
      homeworld: json['homeworld'] as String?,
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      starships: (json['starships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hair_color,
      'eye_color': instance.eye_color,
      'skin_color': instance.skin_color,
      'gender': instance.gender,
      'birth_year': instance.birth_year,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
