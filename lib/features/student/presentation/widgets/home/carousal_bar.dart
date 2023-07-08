import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousalHomeWidget extends StatefulWidget {
  const CarousalHomeWidget({super.key, required this.imgList});
  final List<String> imgList;

  @override
  State<CarousalHomeWidget> createState() => _CarousalHomeWidgetState();
}

class _CarousalHomeWidgetState extends State<CarousalHomeWidget> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          options: CarouselOptions(
              height: double.infinity,
              aspectRatio: 1,
              viewportFraction: 1,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          itemBuilder: (context, index, realIndex) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as desired
                child: Image.asset(widget.imgList[index]),
              ),
            );
          },
          itemCount: widget.imgList.length,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.black
                                : Colors.white)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
