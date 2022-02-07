class ResponseModel {
  String message;
  int status;
  dynamic data;

  ResponseModel({required this.message, required this.status, this.data,});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      message: json['message'] as String,
      status: json['status_code'] as int,
      data: json['data'] as String,
    );
  }
}