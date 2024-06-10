import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LudoScreen extends StatelessWidget {
  const LudoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color yellow = const Color(0xFFFFFF00);
    Color yellow2 = const Color(0xFFFBBF2C);
    Color green1 = const Color(0xFF8BC24A);
    Color green2 = const Color(0xFF43A046);
    Color orange = const Color(0xFFF47F19);
    Color red1 = const Color(0xFFF0534F);
    Color red2 = const Color(0xFFD32F2F);
    Color blue1 = const Color(0xFF42A5F4);
    Color blue2 = const Color(0xFF1876D1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 106, 79),
        title: const Center(
          child: Text(
            'Ludo',
            style: TextStyle(
                color: Color(0xffffffff), fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 6,
              ),
              makeARow(
                color: Colors.white,
                length: 3,
              ),
              makeARow(
                color: yellow,
                length: 6,
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 4,
              ),
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 2,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 4,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
            ],
          ),
          // Row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: green2,
                length: 1,
              ),
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: Colors.grey,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: orange,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
            ],
          ),
          // Row 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: green2,
                length: 1,
              ),
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: orange,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
            ],
          ),
          // Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 4,
              ),
              makeARow(
                color: green1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 4,
              ),
              makeARow(
                color: yellow,
                length: 1,
              ),
            ],
          ),
          // Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: green1,
                length: 6,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: yellow,
                length: 6,
              ),
            ],
          ),

          // 1st half end

          // middle start

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 4,
              ),
              Container(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: DiagonalPainter(
                    color1: green2,
                    color2: yellow2,
                    inverted: true,
                  ),
                ),
              ),
              makeARow(
                color: yellow2,
                length: 1,
              ),
              Container(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: DiagonalPainter(
                    color1: yellow2,
                    color2: blue2,
                  ),
                ),
              ),
              makeARow(
                color: Colors.white,
                length: 3,
              ),
              makeARow(
                color: Colors.grey,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: green2,
                length: 6,
              ),
              Container(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: CrossPainter(
                    color4: green2,
                    color2: blue2,
                    color1: yellow2,
                    color3: red2,
                  ),
                ),
              ),
              makeARow(
                color: blue2,
                length: 6,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: Colors.white,
                length: 2,
              ),
              makeARow(
                color: Colors.grey,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 3,
              ),
              Container(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: DiagonalPainter(
                    color1: green2,
                    color2: red2,
                  ),
                ),
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              Container(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: DiagonalPainter(
                    color1: red2,
                    color2: blue2,
                    inverted: true,
                  ),
                ),
              ),
              makeARow(
                color: Colors.white,
                length: 4,
              ),
              makeARow(
                color: blue2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
            ],
          ),
          // middle end

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 6,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 6,
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 4,
              ),
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 4,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
            ],
          ),
          // Row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: blue2,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
            ],
          ),
          // Row 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 1,
              ),
              makeARow(
                color: Colors.grey,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 2,
                isMiddle: true,
              ),
              makeARow(
                color: blue2,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
            ],
          ),
          // Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 4,
              ),
              makeARow(
                color: red1,
                length: 1,
              ),
              makeARow(
                color: red2,
                length: 2,
              ),
              makeARow(
                color: Colors.white,
                length: 1,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
              makeARow(
                color: blue2,
                length: 4,
              ),
              makeARow(
                color: blue1,
                length: 1,
              ),
            ],
          ),
          // Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeARow(
                color: red1,
                length: 6,
              ),
              makeARow(
                color: Colors.white,
                length: 3,
              ),
              makeARow(
                color: blue1,
                length: 6,
              ),
            ],
          ),

          // 2nd half end
        ],
      ),
    );
  }
}

Widget makeAContainer({
  bool isMiddle = false,
  Color color = Colors.white,
}) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: isMiddle ? Colors.white : color,
      border: Border.all(color: Colors.black, width: 2),
    ),
    padding: const EdgeInsets.all(5),
    child: isMiddle
        ? CircleAvatar(
            backgroundColor: color,
          )
        : null,
  );
}

Widget makeARow({
  required int length,
  required Color color,
  bool isMiddle = false,
}) {
  return Row(
    children: [
      for (int i = 0; i < length; i++)
        makeAContainer(
          color: color,
          isMiddle: isMiddle,
        )
    ],
  );
}

class DiagonalPainter extends CustomPainter {
  final Color color1;
  final Color color2;
  final bool inverted;

  DiagonalPainter({
    required this.color1,
    required this.color2,
    this.inverted = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // top left to bottom right diagonal
    var path = Path();
    if (!inverted) {
      path.moveTo(0, 0);
      path.lineTo(size.width, 0);
      path.lineTo(0, size.height);
    } else {
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }
    path.close();
    paint.color = color1;
    canvas.drawPath(path, paint);
    // top right to bottom left diagonal
    path = Path();
    if (!inverted) {
      path.moveTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    }
    path.close();
    paint.color = color2;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CrossPainter extends CustomPainter {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  CrossPainter({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // top triangle
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();
    paint.color = color1;
    canvas.drawPath(path, paint);

    // right triangle
    path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();
    paint.color = color2;
    canvas.drawPath(path, paint);

    // bottom triangle
    path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();
    paint.color = color3;
    canvas.drawPath(path, paint);

    // left triangle
    path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();
    paint.color = color4;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
