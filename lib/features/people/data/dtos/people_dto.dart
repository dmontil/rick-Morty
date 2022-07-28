import 'package:ricky/features/people/domain/models/models.dart';

class PeopleDTO {
  final int count;
  final String? next;
  final String? previous;
  final List<Person> results;
  PeopleDTO({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PeopleDTO.fromJson(Map<String, dynamic> map) {
    return PeopleDTO(
      count: map['count'],
      next: map['next'],
      previous: map['previous'],
      results: (map['results'] as List<dynamic>)
          .map((model) => Person.fromJson(model))
          .toList(),
    );
  }
}
