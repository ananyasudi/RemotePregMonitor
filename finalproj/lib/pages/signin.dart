import 'dart:convert';
import 'package:http/http.dart';


var request_parameters={ 'grant_type': 'refresh_token',
    'client_id': '1000.xxxxxxxxxxxxxxxxxxxxx', 
    'client_secret': 'xxxxxxxxxxxxxxxxxxxxxxx', 
    // 'redirect_uri': 'https://google.com', 
    'refresh_token':'1000.xxxxxxxxxxxxxx.xxxxxxxxxxxxxxx'
};
Future<String> get_access_token()async{
  late var access_token;
  var Accounts_URL = 'https://accounts.zoho.in';

  var client_id = request_parameters['client_id'];

  var client_secret = request_parameters['client_secret'];

  var refresh_token = request_parameters['refresh_token'];

  late var new_url='$Accounts_URL/oauth/v2/token?refresh_token=$refresh_token&client_id=$client_id&client_secret=$client_secret&grant_type=refresh_token';
  // var new_url='$Accounts_URL/oauth/v2/token';
  
  try{
  var data=await post(Uri.parse(new_url));
  var decodedData=json.decode(data.body);
  access_token=decodedData["access_token"];
  // print(access_token);
  return access_token;
  }
  catch(err){
    print("error");
    print(err);
    return "";
  }

}
Future signIn(String email_id,String password)async{
  // print(email_id);
  String email=email_id;
  
  var url = 'https://www.zohoapis.in/crm/v2/Contacts/search?email=$email';
  var access_token=await get_access_token();
  print(access_token);
  try{
    var search_data=await get(Uri.parse(url),
    headers: {
        "Content-Type": "application/json",
        "Authorization": "Zoho-oauthtoken $access_token",
        },

    
    );
    if(search_data.body.isNotEmpty){
    var search_result=json.decode(search_data.body);
    // return search_result;
    // print(search_result);
    if(search_result["data"][0]["Password"]==password){
      return search_result;
    }
    else{
      return "Wrong Password";
    }
    }
    else{
      return "No email found";
    }

  }
  catch(err){
    print("error.....");
    print(err);
  }
}
