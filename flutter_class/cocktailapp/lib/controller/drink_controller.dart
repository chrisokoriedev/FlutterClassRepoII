import 'package:cocktailapp/model/cocktail_model.dart';
import 'package:cocktailapp/service/api_helper.dart';
import 'package:get/get.dart';

class DrinkController extends GetxController {
  var isLoading = true.obs;
  var dataModel = CocktailModel(drinks: []);
  @override
  void onInit() {
    super.onInit();
    fetchDrinkList();
  }

  void fetchDrinkList() async {
    try {
      isLoading(true);
      CocktailModel data = await ApiHelper.getDrinkList();
      if (dataModel.drinks.isEmpty) {
        dataModel = data;
      } else {
        return null;
      }
    }
     finally {
      isLoading(false);
    }
  }
}
