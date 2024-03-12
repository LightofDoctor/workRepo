
import 'package:json_annotation/json_annotation.dart';

part 'get_start_model.g.dart';
@JsonSerializable()
class GetStartInfo{
  final int x;
  final int y;

  GetStartInfo(this.x, this.y);


  factory GetStartInfo.fromJson(Map<String,dynamic> json) => _$GetStartInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GetStartInfoToJson(this);
}

