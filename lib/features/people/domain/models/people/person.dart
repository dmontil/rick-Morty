import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person(
      {required String? url,
      required String? name,
      required String? height,
      required String? mass,
      required String? hair_color,
      required String? eye_color,
      required String? skin_color,
      required String? gender,
      required String? birth_year,
      required String? homeworld,
      required List<String>? films,
      required List<String>? species,
      required List<String>? starships,
      required List<String>? vehicles,
      required DateTime? created,
      required DateTime? modified}) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
