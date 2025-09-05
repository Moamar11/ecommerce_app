sealed class Shapes {}

class RectangleShape extends Shapes {
  int width;
  int height;
  RectangleShape({required this.width, required this.height});

  void calculateArea() {
    print("Area of rectangle = ${width * height}");
  }
}

class CircleShape extends Shapes {
  int radius;

  CircleShape({required this.radius});

  void calculateArea() {
    double circleArea = 3.17 * radius * radius;
    print("Area of circle = $radius");
  }
}

void main() {
  var rectangle = RectangleShape(width: 5, height: 7);
  rectangle.height = 10;
  rectangle.calculateArea();

  var circle = CircleShape(radius: 6);
  circle.calculateArea();

  switch (rectangle) {
    case RectangleShape():
      {}
      break;
    case CircleShape():
      {}
  }
}
