part of firebase_helpers;

/// Storage service class provides various firebase storage
/// related helper functions
class StorageService {
  /// Get singleton instance of [StorageService]
  static final instance = StorageService();

  FirebaseStorage _storage = FirebaseStorage.instance;

  /// Upload given [file] to the provided [path]
  /// returns the downloadUrl for the uploaded file.
  Future<dynamic> uploadFile(String path, File file) async {
    Reference ref = _storage.ref().child(path);
    UploadTask uploadTask = ref.putFile(file);
    await uploadTask;
    return ref.getDownloadURL();
  }
}
