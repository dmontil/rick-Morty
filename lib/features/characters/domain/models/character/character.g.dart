// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      gender: json['gender'] as String,
      type: json['type'] as String,
      species: json['species'] as String,
      image: json['image'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'gender': instance.gender,
      'type': instance.type,
      'species': instance.species,
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'location': instance.location,
    };
