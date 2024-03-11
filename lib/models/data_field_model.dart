

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'other_models.dart';
part 'data_field_model.g.dart';
@JsonSerializable()
class DataField{
  final String id;
  final List<String> field;
  final GetStartInfo start;
  final GetEndInfo end;

 DataField({required this.end, required this.field, required this.id, required this.start});


 factory DataField.fromJson(Map<String, dynamic> json) => _$DataFieldFromJson(json);

 Map<String,dynamic> toJson() => _$DataFieldToJson(this);
}

