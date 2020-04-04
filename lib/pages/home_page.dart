import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Category {
  ANY,
  KNOWLEDGE,
  BOOKS,
  FILM,
  MUSIC,
  THEATRES,
  TELEVISION,
  GAMES,
  SCIENCE,
  COMPUTERS,
  MATHEMATICS,
  MYTHOLOGY,
  SPORTS,
  GEOGRAPHY,
  HISTORY,
  POLITICS,
  ART,
  CELEBRITIES,
  ANIMALS,
  VEHICLES,
  COMICS,
  GADGETS,
  ANIME,
  CARTOON
}

enum Difficulty { ANY, EASY, MEDIUM, HARD }

enum Type { ANY, MCQ, TF }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfQuestions = 10;
  String category = "Any Category";
  String difficulty = "Any Difficulty";
  String type = "Any Type";

  String getCategory(Category categoryType) {
    switch (categoryType) {
      case Category.ANY:
        return "Any Category";
      case Category.KNOWLEDGE:
        return "General Knowledge";
      case Category.BOOKS:
        return "Books";
      case Category.FILM:
        return "Films";
      case Category.MUSIC:
        return "Music";
      case Category.THEATRES:
        return "Theatres";
      case Category.TELEVISION:
        return "Television";
      case Category.GAMES:
        return "Video Games";
      case Category.SCIENCE:
        return "Science and Nature";
      case Category.COMPUTERS:
        return "Computers";
      case Category.MATHEMATICS:
        return "Mathematics";
      case Category.MYTHOLOGY:
        return "Mythology";
      case Category.SPORTS:
        return "Sports";
      case Category.GEOGRAPHY:
        return "Geography";
      case Category.HISTORY:
        return "History";
      case Category.POLITICS:
        return "Politices";
      case Category.ART:
        return "Art";
      case Category.CELEBRITIES:
        return "Celebrities";
      case Category.ANIMALS:
        return "Animals";
      case Category.VEHICLES:
        return "Vehicles";
      case Category.COMICS:
        return "Comics";
      case Category.GADGETS:
        return "Gadgets";
      case Category.ANIME:
        return "Anime and Manga";
      case Category.CARTOON:
        return "Cartoon and Animation";
      default:
        return "Unknown";
    }
  }

  String getDifficulty(Difficulty difficultyType) {
    switch (difficultyType) {
      case Difficulty.ANY:
        return "Any Difficulty";
      case Difficulty.EASY:
        return "Easy";
      case Difficulty.MEDIUM:
        return "Medium";
      case Difficulty.HARD:
        return "Hard";
      default:
        return "Unknown";
    }
  }

  String getType(Type typeType) {
    switch (typeType) {
      case Type.ANY:
        return "Any type";
      case Type.MCQ:
        return "Multiple Choice";
      case Type.TF:
        return "True and False";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget card({@required String title, @required Widget child}) => Container(
          margin: EdgeInsets.all(8),
          child: Card(
            child: ListTile(
              title: Text(title),
              subtitle: child,
            ),
          ),
        );

    final minusButton = Container(
      child: FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {
          if (numberOfQuestions > 1) {
            setState(() {
              --numberOfQuestions;
            });
          }
        },
      ),
    );

    final plusButton = Container(
      child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (numberOfQuestions < 50) {
            setState(() {
              ++numberOfQuestions;
            });
          }
        },
      ),
    );

    final questionNumber = Container(
      child: Text("$numberOfQuestions"),
    );

    final categoryMenu = PopupMenuButton<Category>(
      child: Icon(Icons.arrow_drop_down),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Category>>[
        const PopupMenuItem(
          value: Category.ANY,
          child: Text("Any Category"),
        ),
        const PopupMenuItem(
          value: Category.KNOWLEDGE,
          child: Text("General Knowledge"),
        ),
        const PopupMenuItem(
          value: Category.BOOKS,
          child: Text("Books"),
        ),
        const PopupMenuItem(
          value: Category.FILM,
          child: Text("Films"),
        ),
        const PopupMenuItem(
          value: Category.MUSIC,
          child: Text("Music"),
        ),
        const PopupMenuItem(
          value: Category.THEATRES,
          child: Text("Theatres"),
        ),
        const PopupMenuItem(
          value: Category.TELEVISION,
          child: Text("Television"),
        ),
        const PopupMenuItem(
          value: Category.GAMES,
          child: Text("Games"),
        ),
        const PopupMenuItem(
          value: Category.SCIENCE,
          child: Text("Science"),
        ),
        const PopupMenuItem(
          value: Category.COMPUTERS,
          child: Text("Computers"),
        ),
        const PopupMenuItem(
          value: Category.MATHEMATICS,
          child: Text("Mathematics"),
        ),
        const PopupMenuItem(
          value: Category.MYTHOLOGY,
          child: Text("Mythology"),
        ),
        const PopupMenuItem(
          value: Category.SPORTS,
          child: Text("Sport"),
        ),
        const PopupMenuItem(
          value: Category.GEOGRAPHY,
          child: Text("Geography"),
        ),
        const PopupMenuItem(
          value: Category.HISTORY,
          child: Text("History"),
        ),
        const PopupMenuItem(
          value: Category.POLITICS,
          child: Text("Politics"),
        ),
        const PopupMenuItem(
          value: Category.ART,
          child: Text("Art"),
        ),
        const PopupMenuItem(
          value: Category.CELEBRITIES,
          child: Text("Celebrities"),
        ),
        const PopupMenuItem(
          value: Category.ANIMALS,
          child: Text("Animals"),
        ),
        const PopupMenuItem(
          value: Category.VEHICLES,
          child: Text("Vehicles"),
        ),
        const PopupMenuItem(
          value: Category.COMICS,
          child: Text("Comics"),
        ),
        const PopupMenuItem(
          value: Category.GADGETS,
          child: Text("Gadgets"),
        ),
        const PopupMenuItem(
          value: Category.ANIME,
          child: Text("Anime"),
        ),
        const PopupMenuItem(
          value: Category.CARTOON,
          child: Text("Cartoon"),
        ),
      ],
      onSelected: (Category categoryType) {
        setState(() {
          category = getCategory(categoryType);
        });
      },
    );

    final difficultyMenu = PopupMenuButton<Difficulty>(
      child: Icon(Icons.arrow_drop_down),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Difficulty>>[
        const PopupMenuItem(
          value: Difficulty.ANY,
          child: Text("Any Difficulty"),
        ),
        const PopupMenuItem(
          value: Difficulty.EASY,
          child: Text("Easy"),
        ),
        const PopupMenuItem(
          value: Difficulty.MEDIUM,
          child: Text("Medium"),
        ),
        const PopupMenuItem(
          value: Difficulty.HARD,
          child: Text("Hard"),
        ),
      ],
      onSelected: (difficultyType) {
        setState(() {
          difficulty = getDifficulty(difficultyType);
        });
      },
    );

    final typeMenu = PopupMenuButton<Type>(
      child: Icon(Icons.arrow_drop_down),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Type>>[
        const PopupMenuItem(
          value: Type.ANY,
          child: Text("Any type"),
        ),
        const PopupMenuItem(
          value: Type.MCQ,
          child: Text("Multiple Choice"),
        ),
        const PopupMenuItem(
          value: Type.TF,
          child: Text("True and False"),
        ),
      ],
      onSelected: (typeType) {
        setState(() {
          type = getType(typeType);
        });
      },
    );

    Widget selector({@required String title, @required Widget child}) =>
        Container(
          child: ListTile(
            title: Text(title),
            trailing: child,
          ),
        );

    return Material(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                card(
                  title: "Number of questions",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[minusButton, questionNumber, plusButton],
                  ),
                ),
                card(
                    title: "Select Category",
                    child: selector(title: category, child: categoryMenu)),
                card(
                    title: "Select Difficulty",
                    child: selector(title: difficulty, child: difficultyMenu)),
                card(
                    title: "Select Type",
                    child: selector(title: type, child: typeMenu)),
                Container(
                  padding: EdgeInsets.all(16),
                  child: MaterialButton(
                    color: Theme.of(context).buttonColor,
                    child: Text("Start"),
                    onPressed: () {
                      print("Wala!");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}