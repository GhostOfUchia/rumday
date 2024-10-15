import 'package:rumedy/consts/exports.dart';

class FilterProvider extends ChangeNotifier {
// hanfdle total items

  final List<String> totalItems = [];

  // List<String> get totalItems => totalItems;

  nullableList() {
    totalItems.clear();

    distanceList.clear();

    flaversLIst.clear();
    ratingList.clear();
    drinksList.clear();
    notifyListeners();
  }

  // handle distance filter

  final List<String> _distanceList = [];
  List<String> get distanceList => _distanceList;

  void addDistanceFilterItems(String distance) {
    _distanceList.add(distance);
    totalItems.add(distance);
    notifyListeners();
  }

  void removeDistanceFilterItems(String distance) {
    _distanceList.remove(distance);
    totalItems.remove(distance);
    notifyListeners();
  }

  // handle drinkstype

  final List<String> _drinksList = [];
  List<String> get drinksList => _drinksList;

  void addDrinksItems(String drinkName) {
    _drinksList.add(drinkName);
    totalItems.add(drinkName);
    notifyListeners();
  }

  void removeDrinksItems(String drinkName) {
    _drinksList.remove(drinkName);
    totalItems.remove(drinkName);
    notifyListeners();
  }

  // handle flaver

  final List<String> _flaversList = [];

  List<String> get flaversLIst => _flaversList;

  void addFlaver(String flaver) {
    _flaversList.add(flaver);
    totalItems.add(flaver);
    notifyListeners();
  }

  void removeFlaver(String flaver) {
    _flaversList.remove(flaver);
    totalItems.remove(flaver);
    notifyListeners();
  }

  // handle rating
  final List<String> _ratingList = [];
  List<String> get ratingList => _ratingList;

  void addRating(String rating) {
    _ratingList.add(rating);
    totalItems.add(rating);
    notifyListeners();
  }

  void removeRating(String rating) {
    _ratingList.remove(rating);
    totalItems.remove(rating);
    notifyListeners();
  }
}
