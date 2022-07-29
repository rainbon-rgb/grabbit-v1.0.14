import '/core/app_export.dart';
import 'package:grabbit/presentation/delete_a_rabbit_bottomsheet/models/delete_a_rabbit_model.dart';

class DeleteARabbitController extends GetxController {
  Rx<DeleteARabbitModel> deleteARabbitModelObj = DeleteARabbitModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    deleteARabbitModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    deleteARabbitModelObj.value.dropdownItemList.refresh();
  }
}
