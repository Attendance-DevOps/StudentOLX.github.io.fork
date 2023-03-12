/// Product Grid View contains the Grid view of horizontal sized product images
/// Its Images, Product Name, Product Price, Location of Selling is extracted by productList.dart which will be dynamic in future.

import 'package:flutter/material.dart';
import 'productList.dart';

class ProductGridView extends StatelessWidget {
  String title;
  ProductGridView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white)),
              Row(children: const [
                Text("View all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white)),
                Icon(Icons.keyboard_arrow_down_outlined,
                    size: 16, color: Colors.white)
              ])
            ],
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: size.width * 1.1 / size.height * 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: gridViewLinks.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print("index $index");
              },
              child: Container(
                // color: Colors.amber,
                width: size.width * 0.45,
                child: Expanded(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(gridViewLinks[index]),
                            fit: BoxFit.contain,
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                gridViewProductName[index],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text("Rs.${gridViewProductPrice[index]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 16)),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_on_sharp,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  Flexible(
                                    child: Text(
                                        "Vivekananda Institute of Professional Studies",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                ],
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
