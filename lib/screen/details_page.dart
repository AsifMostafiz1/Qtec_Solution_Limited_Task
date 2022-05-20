import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:qtec_work_demo/constats.dart';
import 'package:qtec_work_demo/provider/product_details_provider.dart';
import 'package:flutter_html/flutter_html.dart';


class DetailsPage extends StatefulWidget {
  final String slagName;
  const DetailsPage({Key? key, required this.slagName}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() {
    final provider =
        Provider.of<ProductDetailsProvider>(context, listen: false);
    provider.getProductDetails(widget.slagName);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductDetailsProvider>(context);
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      appBar: buildAppBar(context),
      body: provider.isLoading == false
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildCarasolSlider(context, provider),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "প্রোডাক্ট নেইমঃ  ",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Expanded(
                              child: Container(
                                child: TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: provider
                                        .productDetails!.data!.productName
                                        .toString(),
                                    hintStyle: subTitleStyle,
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "ব্রান্ডঃ ",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              provider.productDetails!.data!.brand!.name
                                  .toString(),
                              style: subTitleStyle,
                            ),
                          ],
                        ),
                        buildSellingBuyingContainer(context, provider),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepPurple
                              ),
                              child: Center(child: Text("এটি কিনুন",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),
                        const Text(
                          "বিস্তারিত",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        //Text(provider.productDetails!.data!.description.toString())
                        Html(
                            data: provider.productDetails!.data!.description
                                .toString()),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SpinKitThreeBounce(
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Loading Data.......")
                  ],
                ),
              ),
            ),
    );
  }

  Container buildSellingBuyingContainer(
      BuildContext context, ProductDetailsProvider provider) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12),
          color: Constant.secondaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ক্রয়মূল্যঃ ",
                style: const TextStyle(fontSize: 20, color: Colors.pink),
              ),
              Text(
                provider.productDetails!.data!.charge!.currentCharge.toString(),
                style: titleStyle,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "বিক্রয়মূল্যঃ ",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              Text(
                provider.productDetails!.data!.charge!.sellingPrice.toString(),
                style: titleStyle,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            color: Colors.black87,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "লাভঃ ",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              Text(
                "50",
                style: titleStyle,
              )
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "প্রোডাক্ট ডিটেইল",
        style: titleStyle,
      ),
      centerTitle: true,
      backgroundColor: Constant.primaryColor,
      elevation: 1,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  Container buildCarasolSlider(
      BuildContext context, ProductDetailsProvider provider) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
          itemCount: 1,
          options: CarouselOptions(
              viewportFraction: .5,
              enlargeCenterPage: true,
              reverse: false,
              autoPlay: false,
              height: MediaQuery.of(context).size.height),
          //carouselController: _carouselSlider,
          itemBuilder: (context, int index, int pageViewIndex) {
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.network(
                    provider.productDetails!.data!.image.toString(),
                    fit: BoxFit.cover,
                  )),
            );
          }),
    );
  }
}
