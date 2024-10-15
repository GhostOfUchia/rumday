import 'package:rumedy/consts/exports.dart';
// import 'package:rumedy/models/bar_model.dart';
import 'package:rumedy/service/bar_service.dart';

class BarProvider with ChangeNotifier {
  final _service = BarService();
  bool isLoading = false;
  List<dynamic> _bars = [];
  List<dynamic> get bars => _bars;

  Future<void> getAllBars() async {
    isLoading = true;
    notifyListeners();

    final responce = await _service.getData();
    _bars = responce;
    isLoading = false;
    notifyListeners();
  }
}
