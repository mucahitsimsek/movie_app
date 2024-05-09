// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'base_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BaseModel extends INetworkModel<BaseModel> with EquatableMixin {
  BaseModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  @override
  BaseModel fromJson(Map<String, dynamic> json) => BaseModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$BaseModelToJson(this);

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];

  BaseModel copyWith({
    int? page,
    List<Movie>? results,
    int? totalPages,
    int? totalResults,
  }) {
    return BaseModel(
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }
}
