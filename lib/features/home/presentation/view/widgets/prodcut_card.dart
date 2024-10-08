import 'package:elevate_task/features/home/presentation/model/products/products.model.dart';
import 'package:elevate_task/features/home/presentation/view/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                spreadRadius: .2,
                blurRadius: 15,
                color: Colors.grey.withOpacity(.1),
                offset: const Offset(10, 10))
          ]),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    maxLines: 1,
                    product.title ?? 'title',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ]),
                  ReviewWidget(
                    product: product,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 55,
            bottom: 135,
            child: Image.network(
              '${product.image}',
              height: 100,
              width: 100,
            )),
        const Positioned(
          right: 25,
          bottom: 210,
          child: Icon(
            color: Colors.black,
            FontAwesomeIcons.heart,
          ),
        ),
        const Positioned(
            bottom: 35,
            right: 25,
            child: Icon(
              FontAwesomeIcons.circlePlus,
              color: Color(0xff004087),
            ))
      ],
    );
  }
}
