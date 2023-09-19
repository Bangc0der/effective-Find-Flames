import "package:http/http.dart" as http;
import "dart:convert";

class ApiService{
  Future getAllPosts()async{
    final allProductUrl=Uri.parse("https://api.findflames.com/user-service/api/v1/profiles/68BNY7ou33MxkaJ6AB90RSdDXYs1");
    final result =await http.get(allProductUrl);
    print(result.statusCode);
    print(result.body);
    return json.decode(result.body);
  }
  Future getSingleProd(int id)async{
    final singleProductUrl=Uri.parse("https://api.findflames.com/user-service/api/v1/profiles/68BNY7ou33MxkaJ6AB90RSdDXYs1");
    final result =await http.get(singleProductUrl);
    print(result.statusCode);
    print(result.body);
    return json.decode(result.body);
  }
  Future getAllCategory(int id)async{
    final allCatgeoryUrl=Uri.parse("https://api.findflames.com/user-service/api/v1/profiles/68BNY7ou33MxkaJ6AB90RSdDXYs1");
    final result =await http.get(allCatgeoryUrl);
    print(result.statusCode);
    print(result.body);
    return json.decode(result.body);
  }
}