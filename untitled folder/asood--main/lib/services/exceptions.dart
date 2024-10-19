class AsoodException implements Exception {
  String message;
  AsoodException([this.message = 'Something went wrong']) {
    message = 'Asood Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
