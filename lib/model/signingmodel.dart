class SignInModel {
  final String? message;
  final String? accessToken;

  SignInModel({this.message, this.accessToken});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      message: json['message'],
      accessToken: json['accessToken'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['accessToken'] = accessToken;
    return data;
  }
}