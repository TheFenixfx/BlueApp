import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class PhrasePicker {


   Future<String> get _localPath async {
    print('EJECUTANDO LOCALPATH ASYNC y ruta  :');
    final directory = await getApplicationDocumentsDirectory();
   // print(directory.path);
    return directory.path;
  }

   Future<File> get _phraseFile async {
    final path = await _localPath;
   // print("phraseFile con path : "+path);
    return File('$path/phrases.txt');
  }

    Future<File> get _descriptionFile async {
    final path = await _localPath;
    return File('$path/description.txt'); //trying path
  }

  Future<String> pickPhrase() async {
    print("PICKPHRASE");
    try {
      final file = await _phraseFile;
      // Read the file
      await writeTestString('TESTING');
      String contents =  await file.readAsString();
      return Future.value(contents);
    } catch (e) {
      // If encountering an error, return 0
      print("error en pickphrase");
      return 'error en pickPhrase';
    }
  }

    Future<String> pickDescription() async {
    String rawString = "";
    try {
      final file = await _descriptionFile;
      // Read the file
      String contents =
          await file.readAsString().then((value) => rawString = value);
    } catch (e) {
      // If encountering an error, return 0
      return rawString;
    }
  }

 Future<File>writeTestString(String test) async {
   print('ESCRIBIENDO');
  final file = await _phraseFile;
  // Write the file.
  return file.writeAsString(test);
}



}
