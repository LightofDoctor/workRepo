import 'data_field_model.dart';

class GetInfoResponse{
  final bool error;
  final String message ;
  final List<DataField> data ;

  GetInfoResponse({required this.error, required this.message, required this.data});

  factory GetInfoResponse.fromJson(Map<String, dynamic> json){
    return GetInfoResponse(
        error: json['error'] as bool,
        message: json['message'] as String,
        data: (json['field'] as List<dynamic>).map((dynamic c) => DataField.fromJson(c as Map<String, dynamic>),).toList()
        
    );


  }
}
