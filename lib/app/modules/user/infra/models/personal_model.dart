import '../../domain/entities/personal.dart';
import '../../domain/entities/client.dart';

// Serialiazacao
import 'package:json_annotation/json_annotation.dart';
  
part 'personal_model.g.dart';
    
@JsonSerializable()
class PersonalModel extends Personal {

    String name;
    int age;
    String email;
    String password;
    List<Clients> clients;


    PersonalModel({
        this.name,
        this.age,
        this.email,
        this.password,
        this.clients
    });

    //JSON methods
    factory PersonalModel.fromJson(Map<String, dynamic> json) =>
         _$PersonalModelFromJson(json);
 
    toJson() => _$PersonalModelToJson(this);

}
