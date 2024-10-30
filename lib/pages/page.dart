import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF17191D),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: const Color(0XFF17191D),
                    child: SizedBox(
                      height: 70,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            const Text(
                              "MoeCellNicco",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFilled = !isFilled;
                                });
                              },
                              icon: Icon(
                                isFilled == false
                                    ? Icons.star_border
                                    : Icons.star,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/product_image.png',
                    height: 350,
                    width: 350,
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    child: SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: Card(
                        color: const Color(0XFF1D1F25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: const Center(
                          // Center the text
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ausgong",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF67686A),
                                ),
                              ),
                              Text(
                                "--",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 17),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width - 54) / 2,
                          height: 70,
                          child: Card(
                            color: const Color(0XFF1D1F25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Center(
                              child: Image.asset("assets/power_on.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width - 54) / 2,
                          height: 70,
                          child: Card(
                            color: const Color(0XFF1D1F25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/clock.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27),
                    child: Divider(
                      thickness: 5,
                      color: Color(0XFF202327),
                    ),
                  ),
                  const SizedBox(height: 23),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27),
                    child: Row(
                      children: [
                        Text(
                          "Energy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Card(
                          color: Color(0XFF1D1F25),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2024-10-25",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 44),
                  const Text(
                    "Consumption",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF67686A)),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "0",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Image.asset(
                    "assets/clipboard.png",
                    color: const Color(0XFF1D1F25),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
