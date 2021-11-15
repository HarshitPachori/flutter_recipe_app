import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/shared.dart';

class Detail extends StatelessWidget {
  final Recipe recipe;
  Detail({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1(
                    recipe.title,
                  ),
                  buildTextSubTitleVariation1(recipe.description)
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildTextTitleVariation("Nutrition", false),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrtion(recipe.calories, "Calories", "kcal"),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrtion(recipe.protein, "Proteins", "g"),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrtion(recipe.carbo, "Carbo", "g"),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation("Ingredients", false),
                  buildTextSubTitleVariation1(
                      "200 gram Cottage cheese/paneer "),
                  buildTextSubTitleVariation1("4 Tomatoes/tamatar"),
                  buildTextSubTitleVariation1(
                      "2 tablespoon Fresh cream or milk"),
                  buildTextSubTitleVariation1(
                      "2 tablespoon Butter, unsalted/makkhan"),
                  buildTextSubTitleVariation1(
                      "3 tablespoon Bell peppers/capsicum/shimla mirch chopped"),
                  buildTextSubTitleVariation1(
                      "1/2 teaspoon Turmeric powder/haldi powder"),
                  buildTextSubTitleVariation1(
                      "1.50 teaspoon Kashmiri chili powder"),
                  buildTextSubTitleVariation1(
                      "1 teaspoon Cumin seeds/sabut jeera"),
                  buildTextSubTitleVariation1("1 teaspoon Salt/namak"),
                  buildTextSubTitleVariation1("1/2 teaspoon Sugar/chini"),
                  buildTextSubTitleVariation1("150 gram Grated bottle gourd"),
                  buildTextSubTitleVariation1("12 Cashew nuts/kaju"),
                  buildTextSubTitleVariation1(
                      "15 Melon seeds/magaz/kharbooje ke beej"),
                  buildTextSubTitleVariation1("1 inch Ginger/adrak"),
                  buildTextSubTitleVariation1("2 Green chillies/hari mirch"),
                  buildTextSubTitleVariation1("2 tablespoon Refined oil"),
                  buildTextSubTitleVariation1("3 Cloves/lavang"),
                  buildTextSubTitleVariation1("4 Green cardamom/hari elaichi"),
                  buildTextSubTitleVariation1(
                      "8 Whole pepper corn/sabut kali mirch"),
                  SizedBox(
                    height: 16,
                  ),
                  buildTextTitleVariation("Recipe Preparation", false),
                  buildTextSubTitleVariation2("STEP 1"),
                  buildTextSubTitleVariation1(
                      "Blanch,peel and grind tomato and make a smooth paste."),
                  buildTextSubTitleVariation2("STEP 2"),
                  buildTextSubTitleVariation1(
                      "Gravy-Take 2 tbsp oil in a pan and add 1/2 tsp cumin,cinnamon,cloves ,peppercorns and green cardamom."),
                  buildTextSubTitleVariation2("STEP 3"),
                  buildTextSubTitleVariation1(
                      "When seeds start crackling add cashew nuts,melon seeds and grated bottle gourd(lauki)."),
                  buildTextSubTitleVariation2("STEP 4"),
                  buildTextSubTitleVariation1(
                      "Saute for 2 minute,then add salt and kasoori methi(dried fenugreek leaves) and cook for 2-3 minutes or till bottle gourd get cooked,then take out the mixture in a bowl."),
                  buildTextSubTitleVariation2("STEP 5"),
                  buildTextSubTitleVariation1(
                      "Let it cool down, then grind and make a fine and smooth paste."),
                  buildTextSubTitleVariation2("STEP 6"),
                  buildTextSubTitleVariation1(
                      "Heat 1tbsp oil+1 tbsp butter in a pan,add capsicum pieces and saute for few seconds.then add turmeric,chili powder and tomato puree and cook for 2 minutes."),
                  buildTextSubTitleVariation2("STEP 7"),
                  buildTextSubTitleVariation1(
                      "Add the bottle gourd gravy and cook again for 1 minute."),
                  buildTextSubTitleVariation2("STEP 8"),
                  buildTextSubTitleVariation1(
                      "Add salt ,sugar,fresh cream and cottage cheese(paneer) pieces."),
                  buildTextSubTitleVariation2("STEP 9"),
                  buildTextSubTitleVariation1(
                      "Mix and cook on slow flame till oil start seperating from the sides of the pan."),
                  buildTextSubTitleVariation2("STEP 10"),
                  buildTextSubTitleVariation1(
                      "Add 1 tbsp butter and garnish with fresh coriander or fresh"),
                  buildTextSubTitleVariation2("STEP 11"),
                  buildTextSubTitleVariation1(
                      "Serving suggestions-best with naan,tandori roti or rice"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        icon: Icon(
          Icons.play_circle_fill,
          color: Colors.white,
          size: 32,
        ),
        label: Text(
          "Watch Video",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildNutrtion(int value, String title, String subtitle) {
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
