import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final title;
  const ProductGridView({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          4,
          (index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Container(
      width: size.width * 0.46,
      child: Column(
        children: [
          Container(
            width: size.width * 0.46,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1671976322696-f7521de69dfc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(children: [
              Row(
                children: [Text("Product Name"), Text("Rs. 140")],
              ),
              Text("Location")
            ]),
          )
        ],
      ),
    ));
          },
        ),
      ),
    );
  }
}
