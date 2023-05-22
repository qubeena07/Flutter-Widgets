import 'package:flutter/material.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:shimmer_effect/widgets/grid_item.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({super.key});

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  final List<DraggableGridItem> _listOfDraggableGridItem = [
    DraggableGridItem(
        child: const GridItem(image: 'assets/beach.jpeg'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/cube1.png'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/human.png'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/peach.png'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/beach.jpeg'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/peach.png'), isDraggable: true),
    DraggableGridItem(
        child: const GridItem(image: 'assets/beach.jpeg'), isDraggable: true),
  ];
  Color value = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: DraggableGridViewBuilder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2.5),
          ),
          children: _listOfDraggableGridItem,
          isOnlyLongPress: false,
          dragCompletion: (List<DraggableGridItem> list, int beforeIndex,
              int afterIndex) {},
          dragFeedback: (List<DraggableGridItem> list, int index) {
            return SizedBox(
              width: 200,
              height: 150,
              child: list[index].child,
            );
          },
          dragPlaceHolder: (List<DraggableGridItem> list, int index) {
            return PlaceHolderWidget(
              child: Container(
                color: const Color.fromARGB(255, 209, 209, 209),
              ),
            );
          },
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Draggable(
        //       // data: Colors.black,/
        //       feedback: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.yellow,
        //       ),
        //       childWhenDragging: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.red,
        //       ),
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.pink,
        //       ),
        //     ),
        //     DragTarget(
        //       builder: (BuildContext comtext, List<dynamic> accepted,
        //           List<dynamic> rejected) {
        //         return Container(
        //           height: 200,
        //           width: 200,
        //           color: value,
        //         );
        //       },
        //       onAccept: (Color color) {
        //         setState(() {
        //           value = color;
        //         });
        //       },
        //     )
        //   ],
        // ),
      ),
    );
  }
}
