import 'package:web_view/headers.dart';

class SearchEngineController with ChangeNotifier {
  String currentPage = SearchEngineModal.platform.google;
  List<String> bookmarks = [];

  void changeSearchEngine({required String url}) {
    currentPage = url;
    notifyListeners();
  }

  void addBookmark({required String url}) {
    bookmarks.add(url);
    notifyListeners();
  }
}
