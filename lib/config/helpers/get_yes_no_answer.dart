


import 'package:dio/dio.dart';
import 'package:yes_no_app2/domain/entities/message.dart';

class GetYesNoAnswer {
  /// Returns true if the answer is 'yes', 'y', or 'true' (case-insensitive).
  /// Returns false for 'no', 'n', or 'false'.
  final _dio = Dio( );

 Future<Message> getAnswer() async{

 final response = await _dio.get('https://yesno.wtf/api');
  
throw UnimplementedError();

 
 } 



}