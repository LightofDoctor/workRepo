
import 'package:json_annotation/json_annotation.dart';
part 'get_end_model.g.dart';
@JsonSerializable()

class GetEndInfo {
  final int x;
  final int y;

  GetEndInfo(this.x, this.y);

  factory GetEndInfo.fromJson(Map<String,dynamic> json) => _$GetEndInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GetEndInfoToJson(this);
}