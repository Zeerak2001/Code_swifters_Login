import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userID;
  final String email;
  final String name;

  const MyUserEntity({required this.userID, required this.email, required this.name});

/* send map to firestore because objects cannot be sent without converting to map */
  Map<String, Object?> toDocument() {
    return {
      'userID': userID,
      'email': email,
      'name': name
    };
  }

/*to access the map from firestore */
  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(userID: doc['userID'], email: doc['email'], name: doc['name']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        userID,
        email,
        name
      ];
}
