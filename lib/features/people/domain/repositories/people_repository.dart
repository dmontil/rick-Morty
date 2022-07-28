import 'package:ricky/features/people/domain/models/models.dart';

abstract class PeopleRepository {
  Future<List<Person>> getPeople();
  Future<List<Person>> getPeopleOfNextPage();
}
