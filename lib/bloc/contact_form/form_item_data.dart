import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_item_data.freezed.dart';

@freezed
class FormItemData with _$FormItemData {
  const FormItemData._();

  factory FormItemData({
    required String key,
    required String hint,
    String? value,
    @Default(false) bool isMandatory,
  }) = _FormItemData;
}
