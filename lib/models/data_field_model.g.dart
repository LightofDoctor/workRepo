// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataField _$DataFieldFromJson(Map<String, dynamic> json) => DataField(
      end: GetEndInfo.fromJson(json['end'] as Map<String, dynamic>),
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      start: GetStartInfo.fromJson(json['start'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataFieldToJson(DataField instance) => <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };
