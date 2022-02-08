
 dart run build_runner build

https://dart.dev/guides/libraries/create-library-packages
https://dart.dev/guides/language/effective-dart/documentation#doc-comments


      Scaffold(
        body: SizedBox.expand(
          // -> 01
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('/backgrounds/water.png'),
                fit: BoxFit.fill, // -> 02
              ),
            ),
            child: const PuzzlePage(),
          ),
        ),
      ),