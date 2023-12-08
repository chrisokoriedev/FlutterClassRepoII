class CocktailModel {
  CocktailModel({
    required this.drinks,
  });

  final List<Drink> drinks;

  factory CocktailModel.fromJson(Map<String, dynamic> json) => CocktailModel(
    drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
  };
}

class Drink {
  Drink({
    required this.strDrink,
    required this.strDrinkThumb,
    required this.idDrink,
  });

  final String strDrink;
  final String strDrinkThumb;
  final String idDrink;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
    strDrink: json["strDrink"],
    strDrinkThumb: json["strDrinkThumb"],
    idDrink: json["idDrink"],
  );

  Map<String, dynamic> toJson() => {
    "strDrink": strDrink,
    "strDrinkThumb": strDrinkThumb,
    "idDrink": idDrink,
  };
}