class DataField{
  final String id;
  final List<String> field;
  final GetStartInfo start;
  final GetEndInfo end;

 DataField({required this.end, required this.field, required this.id, required this.start});

  factory DataField.fromJson(Map<String, dynamic> json){
    return  DataField(
      id: json['id'] as String,
      field: json['field'] as List<String>,
      start: json['start'] as GetStartInfo,
      end: json['end'] as GetEndInfo,
    );

  }
}

class GetStartInfo{
  final int x;
  final int y;

  GetStartInfo(this.x, this.y);
}

class GetEndInfo {
  final int x;
  final int y;

  GetEndInfo(this.x, this.y);
}