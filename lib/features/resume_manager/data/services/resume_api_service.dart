import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class ResumeApiService {

  static Future<bool> uploadResumes(List<PlatformFile> files) async {

    var uri = Uri.parse("http://localhost:8080/api/resumes/upload");

    var request = http.MultipartRequest('POST', uri);

    for (var file in files) {

      request.files.add(
        http.MultipartFile.fromBytes(
          'files',
          file.bytes!,
          filename: file.name,
        ),
      );
    }

    var response = await request.send();

    if (response.statusCode == 200) {
      return true;
    } else {
      print("Upload failed: ${response.statusCode}");
      return false;
    }
  }
}
