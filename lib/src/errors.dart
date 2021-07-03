/// RequestError is an exception thrown if there was a problem during request.
class RequestError implements Exception {
  String message;
  RequestError(this.message);
}
