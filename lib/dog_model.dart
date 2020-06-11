import 'dart:convert';
import 'dart:io';

class Dog {
  final String name;
  final String  location;
  final String description;
  String imageUrl;

  int rating = 10;

  Dog(this.name,this.location,this.description);

  getImageUrl() {}
}

Future getImageUrl() async{
  var imageUrl;
    if(imageUrl != null){
    return;
  }

  HttpClient http=HttpClient();
  try{
    var uri = Uri.http('dog.ceo', 'https://dog.ceo/api/breeds/image/random');
    var request = await http.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();

    
    imageUrl= jsonDecode(responseBody)['message'];
  }catch(exception) {
    print(exception);
  }
}