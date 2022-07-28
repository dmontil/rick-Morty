import 'dart:convert';

import 'package:ricky/core/http/endpoints.dart';
import 'package:ricky/core/http/http_service.dart';
import 'package:ricky/features/people/data/dtos/people_dto.dart';
import 'package:ricky/features/people/domain/models/models.dart';
import 'package:ricky/features/people/domain/repositories/people_repository.dart';

class ApiPeopleRepository extends PeopleRepository {
  final httpService = HttpService(baseUrl: Endpoints.baseURl);
  String? next;
  @override
  Future<Person> getPerson(int id) {
    // TODO: implement getPerson
    throw UnimplementedError();
  }

  @override
  Future<List<Person>> getPeople() async {
    try {
      final _response = await httpService.get(
        endpoint: Endpoints.people,
      );
      //TODO: Define error handling
      if (_response.statusCode != 200) throw Exception();
      final _jsonResponse = json.decode(_response.body);
      final PeopleDTO _peopleDTO = PeopleDTO.fromJson(_jsonResponse);
      next = _peopleDTO.next?.split(Endpoints.baseURl).last;
      return _peopleDTO.results;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Person>> getPeopleOfNextPage() async {
    try {
      if (next == null) {
        return <Person>[];
      }
      final _response = await httpService.get(
        endpoint: next ?? '',
      );
      //TODO: Define error handling
      if (_response.statusCode != 200) throw Exception();
      final _jsonResponse = json.decode(_response.body);
      final PeopleDTO _peopleDTO = PeopleDTO.fromJson(_jsonResponse);
      next = _peopleDTO.next?.split(Endpoints.baseURl).last;
      return _peopleDTO.results;
    } catch (e) {
      throw Exception();
    }
  }
}
