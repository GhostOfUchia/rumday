import 'package:fluttertoast/fluttertoast.dart';
import 'package:rumedy/consts/colors.dart';

showToast(String msg) {
  print("toast run");
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: whiteColor,
      textColor: backGroundColor,
      fontSize: 16.0);
}
