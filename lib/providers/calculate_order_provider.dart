import 'package:rumedy/consts/exports.dart';

class CalculateOrderProvider with ChangeNotifier {
  double _totalOrder = 0;
  double get totalOrder => _totalOrder;

  int _beachBaby = 0;
  int get beachBaby => _beachBaby;

  double tips = 0.0;

  addBeachBaby() {
    _beachBaby++;
    notifyListeners(); // adding drinks count
  }

  removeBeachBaby() {
    if (_beachBaby > 0) {
      _beachBaby--; // adding drinks count
      notifyListeners();
    } else {}
  }

  int _espressoMartini = 0;
  int get espressoMartini => _espressoMartini;

  addEspressoMartini() {
    _espressoMartini++;
    notifyListeners(); // adding drinks count
  }

  removeEspressoMartini() {
    if (_espressoMartini > 0) {
      _espressoMartini--; // removre drinks count
      notifyListeners();
    } else {}
  }

  addValue(double value) {
    _totalOrder = _totalOrder + value;
    notifyListeners();
  }

  removeValue(double value) {
    if (_totalOrder >= value) {
      _totalOrder = _totalOrder - value;
      notifyListeners();
    } else {}
  }
}
