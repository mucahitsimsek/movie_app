// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'error.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Error extends INetworkModel<Error> with EquatableMixin {
  Error({
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
  bool? success;
  int? statusCode;
  String? statusMessage;

  @override
  Error fromJson(Map<String, dynamic> json) => Error.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ErrorToJson(this);

  @override
  List<Object?> get props => [success, statusCode, statusMessage];

  Error copyWith({
    bool? success,
    int? statusCode,
    String? statusMessage,
  }) {
    return Error(
      success: success ?? this.success,
      statusCode: statusCode ?? this.statusCode,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }
}
