import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHelper {


  static Future<Map<String,dynamic>> getDataFromApi({required String LINK}) async
  {
    try{
      var myURL=Uri.parse(LINK);
      var res = await http.get(myURL);
      if(res.statusCode==200){
        Map<String,dynamic> myGetMap=(jsonDecode(res.body));
        return myGetMap;

      }else{
        return {};
      }
    }catch(Error){
      throw("Error is ${Error.toString()}");
    }
  }
}