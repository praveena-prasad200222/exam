void main() {
  Map<String, dynamic> details = {
    "course": "Dart Basics",
    "duration": 30,
    "isFree": true
  };

  details.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}
