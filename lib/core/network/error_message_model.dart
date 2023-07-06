import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final bool success;
  final int statusCode;
  final String statusMessage;

  const ErrorMessageModel(this.success, this.statusCode, this.statusMessage);

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
          json['success'], json['status_code'], json['status_message']);

  @override
  List<Object> get props => [success, statusCode, statusMessage];
}


