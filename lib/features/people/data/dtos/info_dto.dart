class InfoDTO {
  final int count;
  final int pages;
  final String? next;
  final String? prev;
  InfoDTO({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  factory InfoDTO.fromJson(Map<String, dynamic> map) {
    return InfoDTO(
      count: map['count'] as int,
      pages: map['pages'] as int,
      next: map['next'] == null ? null :  map['next']  as String,
      prev: map['prev']  == null ? null : map['prev'] as String,
    );
  }
}
