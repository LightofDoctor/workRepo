import 'package:json_annotation/json_annotation.dart';
import 'data_field_model.dart';
part 'api_model.g.dart';

@JsonSerializable()
class GetInfoResponse{
  final bool error;
  final String message ;
  final List<DataField> data ;

  GetInfoResponse({required this.error, required this.message, required this.data});

  factory GetInfoResponse.fromJson(Map<String, dynamic> json) => _$GetInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetInfoResponseToJson(this);

  }

