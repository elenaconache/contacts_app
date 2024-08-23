import 'package:collection/collection.dart';
import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FormItemsHelper {
  String? getFormItemValue(List<FormItemData> formItems, String key) =>
      formItems.singleWhereOrNull((item) => item.key == key)?.value;

  bool isValidForm(List<FormItemData> formItems) =>
      formItems.every((item) => !item.isMandatory || (item.value?.isNotEmpty ?? false));
}
