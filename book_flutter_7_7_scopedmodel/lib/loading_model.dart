import 'package:scoped_model/scoped_model.dart';

// SECTION-043
class LoadingModel extends Model {
  LoadingModel() {
    loading(false);
  }

  bool value = false;

  loading(bool isLoading) {
    value = isLoading;
    notifyListeners();
  }
}
