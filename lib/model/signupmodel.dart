class SignupModel {
  final String? message;

  SignupModel({this.message});

  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return SignupModel(
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = this.message;
    return data;
  }
}