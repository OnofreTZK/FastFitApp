import '../../domain/entities/client.dart';

// Serialiazacao
import 'package:json_annotation/json_annotation.dart';
  
part 'client_model.g.dart';
    
@JsonSerializable()
class ClientModel extends Client {

    String name;
    int age;
    String email;
    String password;
    double weight;
    double height;


    ClientModel({
        this.name,
        this.age,
        this.email,
        this.password,
        this.clients,
        this.weight,
        this.height
    });

    //JSON methods
    factory ClientModel.fromJson(Map<String, dynamic> json) =>
         _$ClientModelFromJson(json);
 
    toJson() => _$ClientModelToJson(this);

}
