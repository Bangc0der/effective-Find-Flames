import "package:http/http.dart" as http;
import "dart:convert";

class ApiService{
  Future getAllPosts()async{
    final allProductUrl=Uri.parse("https://fakestoreapi.com/products");
    final result =await http.get(allProductUrl);
    print(result.statusCode);
    print(result.body);
    return json.decode(result.body);
  }
  Future getSingleProd(int id)async{
    final singleProductUrl=Uri.parse("https://fakestoreapi.com/products/$id");
    final result =await http.get(singleProductUrl);
    print(result.statusCode);
    print(result.body);
    return json.decode(result.body);
  }
}