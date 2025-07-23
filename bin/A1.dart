void main() {
  Map<String, dynamic> details = {
    "course": "Dart Basics",
    "duration": 30,
    "isFree": true,
  };

  print("Key: course, Value: ${details["course"]}");
  print("Key: duration, Value: ${details["duration"]}");
  print("Key: isFree, Value: ${details["isFree"]}");
}
