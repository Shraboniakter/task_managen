import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'network_response.dart';
class NetworkCaller{
Future <NetWorkResponse> postRequest(String url,{Map<String,dynamic>?body}) async{
  try{
    log(url);
    log(body.toString());
  final Response response=await post(Uri.parse(url),body:jsonEncode(body),headers: {
  'Content-type':'Application/json',
});
  log(response.statusCode.toString());
  log(response.body.toString());

if(response.statusCode==200){
  return NetWorkResponse(isSuccess: true,
    jsonResponse: jsonDecode(response.body),
  statusCode: 200,
  );

}else{
  return NetWorkResponse(
    isSuccess: false,
    statusCode: response.statusCode,
    jsonResponse: jsonDecode(response.body),
  );
}
  }catch(e){
    return NetWorkResponse(isSuccess: false,errorMessage: e.toString());
  }
}
}
