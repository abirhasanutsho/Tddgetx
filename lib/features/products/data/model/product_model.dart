import 'package:getx_tdd/features/products/domain/entities/product_entity.dart';


class UserModel extends UserEntity {
  UserModel(
      {required int? id,
      required DateTime? dateOfBirth,
      required String? job,
      required String? city,
      required String? zipcode,
      required double? latitude,
      required String? profilePicture,
      required String? email,
      required String? lastName,
      required String? firstName,
      required String? phone,
      required String? street,
      required String? state,
      required String? country,
      required double? longitude})
      : super(
          id: id,
          dateOfBirth: dateOfBirth,
          job: job,
          city: city,
          zipcode: zipcode,
          latitude: latitude,
          profilePicture: profilePicture,
          email: email,
          lastName: lastName,
          firstName: firstName,
          phone: phone,
          street: street,
          state: state,
          country: country,
          longitude: longitude,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        dateOfBirth: json["date_of_birth"] == null
            ? null
            : DateTime.parse(json["date_of_birth"]),
        job: json["job"],
        city: json["city"],
        zipcode: json["zipcode"],
        latitude: json["latitude"]?.toDouble(),
        profilePicture: json["profile_picture"],
        email: json["email"],
        lastName: json["last_name"],
        firstName: json["first_name"],
        phone: json["phone"],
        street: json["street"],
        state: json["state"],
        country: json["country"],
        longitude: json["longitude"]?.toDouble(),
      );
}
