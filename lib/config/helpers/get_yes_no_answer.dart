


import 'package:dio/dio.dart';
import 'package:yes_no_app2/domain/entities/message.dart';
import 'package:yes_no_app2/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  /// Returns true if the answer is 'yes', 'y', or 'true' (case-insensitive).
  /// Returns false for 'no', 'n', or 'false'.
  final _dio = Dio( );

 Future<Message> getAnswer() async{

 final response = await _dio.get('https://yesno.wtf/api');
 final YesNoModel   yesNoModel = YesNoModel.fromJson(response.data);

return Message(
    text: yesNoModel.answer,
    fromWho: FromWho.hers,
    imageUrl: yesNoModel.image,
  );
  
  //return Message(text: 'yes', fromWho: FromWho.her); // For testing purposes
  //return Message(text: 'no', fromWho: FromWho.her); // For testing purposes

 
 } 



}