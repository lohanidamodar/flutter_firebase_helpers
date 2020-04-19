part of firebase_helpers;

class StorageService {
  static final instance = StorageService();

  FirebaseStorage _storage = FirebaseStorage.instance;

  Future<dynamic> uploadFile(String path,File file) async {
  StorageReference ref = _storage
          .ref()
          .child(path);
      StorageUploadTask uploadTask = ref.putFile(file);
      await uploadTask.onComplete;
      return ref.getDownloadURL();
  }

}