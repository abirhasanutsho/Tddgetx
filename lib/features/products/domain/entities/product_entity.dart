import 'package:equatable/equatable.dart';


class UserEntity extends Equatable {
  int? id;
  DateTime? dateOfBirth;
  String? job;
  String? city;
  String? zipcode;
  double? latitude;
  String? profilePicture;
  String? email;
  String? lastName;
  String? firstName;
  String? phone;
  String? street;
  String? state;
  String? country;
  double? longitude;

  UserEntity({
    this.id,
    this.dateOfBirth,
    this.job,
    this.city,
    this.zipcode,
    this.latitude,
    this.profilePicture,
    this.email,
    this.lastName,
    this.firstName,
    this.phone,
    this.street,
    this.state,
    this.country,
    this.longitude,
  });

  @override
  List<Object?> get props => [
        id,
        dateOfBirth,
        job,
        city,
        zipcode,
        latitude,
        profilePicture,
        email,
        lastName,
        firstName,
        phone,
        street,
        state,
        country,
        longitude,
      ];
}
